require 'profligacy/swing'
require 'profligacy/lel'

class Donacoin::UI
  include_package 'javax.swing'
  include Profligacy

  require_relative 'textarea_formatter'


  require 'open3'

  WINDOW_TITLE = "Donacoin"


  Thread.abort_on_exception = true

  def initialize
    layout = "
     [ <start | stop ]
    "

    # mockup
    #
    # layout = "
    #  [ <start | stop ]
    #  [ donation_info ]
    #  [ settings ]
    # "
    # settings = "
    #   [ username ]
    #   [ speed_slider ]
    # "

    @ui = Swing::LEL.new(JFrame, layout) do |c, i| # c: component, i: interaction
      # components

      c.start = @start_btn = JButton.new "Start"
      c.stop  = @stop_btn = JButton.new "Stop"
      @stop_btn.enabled = false

      # interactions
      i.start = { action: method(:start) }
      i.stop  = { action: method(:stop) }
    end

    @ui.build(args: WINDOW_TITLE).default_close_operation = JFrame::EXIT_ON_CLOSE

    puts "launched ui"

    Tray.new
  end


  def start(type, event)
    @miner = Miner.new
    @miner.start

    @start_btn.enabled = false
    @stop_btn.enabled  = true
  end

  def stop(type, event)
    @miner.stop

    @start_btn.enabled = true
    @stop_btn.enabled  = false
  end


  private

  def connection_test
    http = Net::HTTP.new "158.167.211.53", 6081
    http.open_timeout = 5 # in seconds
    http.read_timeout = 5 # in seconds
    http.request Net::HTTP::Get.new("/")
  end
end

def persist_window
  event_thread = nil
  SwingUtilities.invokeAndWait { event_thread = java.lang.Thread.currentThread }
  event_thread.join
end
# Donacoin
### Donacoin is a cryptocoin mining based donation system

Innovative, simple, open source!

Donating without spending money, just run the program and let your computer do the work. Trough cryptocoin mining you will generate some cryptocoins that will be exchanged to USD/EUR and donated to the cause/charity/ngo you selected.

more infos on: <http://donacoin.com>


### Install (zip install - easiest, contains both)

    wget http://uploads.makevoid.com/donacoin.zip
    unzip

or simply download form this link: <http://uploads.makevoid.com/donacoin.zip>

then *run* the *donacoin.jar* file in that folder



### Install (from source)


install jruby


    gem i warbler profligacy ftools zip


# Run

    ruby bin/donacoin



### Details


Why:
  Profit!

How:
  User downloads and install the software and start donate by mining w/ his/her own PC
  Mining pool software integration into Configurable/Customizable client
  Coin Client is customized with wallet address

Tagline:
  Donate BitCoin/Coin by running this program

Headlines/Press:
  why asics miners arent going so far
  pooled mining changed

Implementation:
  First OS: Mac OSX, then Winzozz
  First Coin to mine: Protoshares
  

Profit:
  We receive donations from Donacoin users
  Deployed version Wallet manager converts money to donate to ONG/ONLUS/Project, and retains a fee, fee has to be usually lower than 2.9% + 0.30$ (Paypal and others) 
  
Ideas:
  Monitor the temperature in order to do not burn any cpu
  try to handle the priority of the task to keep the PC usable during the donation


Implementation tools:
  Language JRuby
  VM: JVM
  GUI: SWing
  Profligacy: http://ihate.rubyforge.org/profligacy/
  GUI coolness: http://ihate.rubyforge.org/profligacy/lel.html (thanks zed) 


Layouts:
   ______________________________________
  | DonaCoin: Donate to <RiotVan:target> |
  | Start | Stop                         |
  | Slider                               |
  | Current Donation per hour PTS / Eur  |
  | Check Temp / Install tools           |
  
  | Donations info v                     |
  | Total Donations: x Eur               |
  | Your Donation: Total: x Eur          |
  | top Donors                           |
    
  
  first version:
  
   ______________________________________
  | DonaCoin: Donate to <RiotVan:target> |
  | Some immediate feedback              |
  | Start | Stop                         |
  
  
  first step: [Bash]
  
  binary version
  
    
  
  
  compiled version
  
  Install dependencies
  
  OSX:
  
    https://github.com/makevoid/donacoin
  
  
%h1 Donacoin core team

Francesco @makevoid Canessa
Gianpaolo @virtuoid Lopresti
Filippo @filipporetti Oretti

activity: https://github.com/makevoid/donacoin/pulse/monthly

#voor esd.install te converten naar wim.install
# change to folder waar esd.install zit
cd c:\file
#get source index die je wilt converten
dism /Get-WimInfo /WimFile:install.esd 
# convert to index (hier 1)
dism /export-image /SourceImageFile:install.esd /SourceIndex:1 /DestinationImageFile:install.wim /Compress:max /CheckIntegrity

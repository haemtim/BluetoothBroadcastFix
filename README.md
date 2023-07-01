# What this fixes
When using Bluetooth Audio devices and having Nvidia Broadcast in auto start, Broadcast starts before your Bluetooth connection is established. This means, you have to manually switch the audio device within Broadcast, and then switch back to the original device. 
Every. Time.

# How this script fixes this
The script runs in the background, checking if the specified device is connected. Once it is detected, it restarts Broadcast.

# How to use
Set the device ID (on line 1) ([Guide](getdeviceid))

Optional:
  - Set Path to the Nvidia Broadcast UI exe (on line 15)
  - Set a differnt sleep for the checking intervall (on line 6, Default: 5s)

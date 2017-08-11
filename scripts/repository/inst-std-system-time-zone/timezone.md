https://debian-administration.org/article/213/Changing_the_timezone_of_your_Debian_system#comment_9
```
The rule of thumb for the UTC setting in /etc/default/rcS is that if your machine is not dual-booted, you can set UTC to yes. This simplifies things because UTC does not jump around based on daylight savings time, so when you boot after daylight savings time, the system doesn't have to guess whether the clock has been updated or not.

But if you dual boot with Windows, Windows will expect the hardware clock to be your localtime, so you should set UTC to no. Note: if you set UTC to yes, if you go into your BIOS, to change the clock, you will need to set it to UTC, as that is what the system will expect when booting. You'll probably notice soon enough that something is wrong.

Oh, and changing the UTC setting in /etc/default/rcS does not require a reboot. True, the clock will not be set until you shutdown properly and the system writes the UTC to the clock, but nothing requires you to do that after modifying that value.
```

Set non-interactive timezone
https://bugs.launchpad.net/ubuntu/+source/tzdata/+bug/1554806 
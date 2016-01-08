
# Paper Laptop

Prototype designs for a DIY laptop enclosure

With the growing number of affordable single board computers, cheaper LCD panels and generally decreasing prices of electronic components we've seen a growing number of projects focusing on building laptops and tablets. Most involve using 3D printed ABS for a prototype and running some sort of fund raising project to create injection molded versions. These projects are very cool.

On the other hand I keep wondering how easy can we make it to just build your own.  There are some affordable supplies like paper, cardboard and fiber board available that require minimal tooling so I started thinking about building my own laptop using paper products (or as much as I could get away with).

## Materials

+ Raspberry Pi 2 Model B for SOC
+ 10.1 LCD panel and video adapter boards for display
+ Firm material for case such as cardboard, fiberboard, chipboard or foam board
+ Misc 3D printed PLA plastic parts (e.g. joins, hinges, latches)


## Electronics

+ Raspberry Pi 2
    + Power 3.5v DC, 1000am draw
+ Tontec 10.1" LCD panel and video driver boards
    + Power 12v DC, 1000ma ???? (need to confirm, my memory may be wrong)
+ Wired USB Keyboard 
+ Wired USB Trackpad
+ Power management
    + 3.5v DC to 12v DC step up converter to provide display's power
        + What else do I need to have one power input to laptop?
    + Battery system
        + Lithium battery pack plus charging circuits
    + On/Off switch

### Options to consider

Misc Pi add ons to consider

+ WiFi USB adapter
+ Bluetoth USB adapter
+ Astro Pi hat
+ Audio card plus embedded speakers
+ Microphone and on/off switch
+ Pi Camera and on/off switch
+ [Makey Makey](http://www.makeymakey.com/)
+ A cluster of Pi Zeros for additional processing power


## Software

### Project design

+ [OpenSCAD](http://www.openscad.org/) - because it is free and it made general sense to my tired brain


## Notes and ideas

+ Main surfaces could be made of cardboard, fiberboard or foam board
    + It would be nice to use whiteboard paper on the outside surfaces
    + Inside surfaces could be black (help any LEDs or other lights visually pop)
+ Hinges and corner brackets could be made from ABS via a 3D printer
+ Lid and base should have generally the same demensions for semetry
+ Have the surface holding the LCD and Keyboards extend to form a handle when closed
+ Hinge should stop the lid from opening at 135 degrees, should have anough friction to stay open at shallower angles



# Paper Laptop

Prototype design for a DIY laptop based on a Raspberry Pi 3. Design should 
be cheap to build (e.g. make libral use of cardboard, foamboard or 
chipboard), reply on a minimum number of custom parts to facilitate 
reconfiguration and experimentation.

Custom parts will be 3d printed from PLA to minimize environmental impact 
(hopefully be recyclable at some point). These will be kept to a minimum.

Placement of parts need to be changable.  I think integrating some 
inexpensive nylon standoffs with velcro dots and small discs should
allow for flexibility with out drilling allot of holes.

I want to minimize the tools I need to assemble with and beyond creating 
the re-usable custom parts be able assemble this safely on a kitchen 
table or office desktop.

## Materials List

+ Firm material for case such as cardboard, fiberboard, chipboard or foam board, or hobbyist plywood
+ Misc 3D printed PLA plastic parts (e.g. joins, hinges, latches)


## Electronics

+ Raspberry Pi 3 
    + Power 3.5v DC at 1000amps
+ Tontec 10.1" LCD panel and video driver boards
    + Power 12v DC, 2000amps (need to confirm, my memory may be wrong)
    + On power supply center if barrel connector is positive
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

+ WiFi/Bluetooth USB adapter
+ Astro Pi hat
+ Audio card plus embedded speakers
+ Microphone and on/off switch
+ Pi Camera and on/off switch
+ A cluster of Pi Zeros for additional processing power
    + a small switch or hub to run TCP/IP over
+ [Makey Makey](http://www.makeymakey.com/)


## Software

### Project design

+ [OpenSCAD](http://www.openscad.org/) - because it is free and it made general sense to my tired brain
+ [Slic3r](http://slic3r.org/) - 
    + Download tar ball and unzipped into home directory add $HOME/slic3r/bin to path
+ [MatterControl](http://www.mattercontrol.com/articles/mattercontrol-getting-started) - printer control software


## Notes and ideas

+ Main surfaces could be made of cardboard, fiberboard or foam board
    + It would be nice to use whiteboard paper on the outside surfaces
    + Inside surfaces could be black (help any LEDs or other lights visually pop)
+ Hinges and corner brackets could be made from ABS via a 3D printer
+ Lid and base should have generally the same demensions for semetry
+ Have the surface holding the LCD and Keyboards extend to form a handle when closed
+ Hinge should stop the lid from opening at 135 degrees, should have anough friction to stay open at shallower angles

### Software to explore

+ [FreeCAD](http://www.freecadweb.org/) - A version is available as a Debian/Ubuntu package
    + [CadQuery](https://github.com/dcowden/cadquery)
    + [CadQuery Plugin for FreeCAD](https://github.com/jmwright/cadquery-freecad-module)
+ [OctoPrint](http://octoprint.org/) - image available for Dedicate Raspberry Pi
+ [OpenJSCad](http://openjscad.org/) - JS library, play with via website
+ [HeeksCAD](https://sites.google.com/site/heekscad/)
    + [Source Code](https://github.com/Heeks/heekscad)
+ [GCodeViewer](https://github.com/hudbrog/gCodeViewer)
    + [GCodeViewer](http://gcode.ws/)

## Reference

+ [RepRap](http://reprap.org/wiki/Useful_Software_Packages)


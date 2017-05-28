==========
Change Log
==========

Version 0.3.4
-------------

Release date: Not released

**Added**
 * Grbl 1.1 support,
 * Configurable keybindings,
 * Improved execution time estimation. It now takes into account the machines maximum speeds,
 * Fixed Precise Jog behaviour,

**Fixed**
 * Fixed an issue where serial connection was impossible after a unexpected disconnection,
 * Fixed :issue:`39`,
 * Fixed case issue during parsing of GCode,
 * Fixed default view keybinding so they don't conflict with GCode editor,
 * Fixed G2 target board sometimes not showing,
 * Fixed error when changing Grbl status polling while being disconnected from Grbl

Version 0.3.3
-------------

Release date: 2017-02-26

**Added**
 * G2 Core support,
 * Grid minimum and maximum retrieved from TinyG and G2 configuration,
 * MSG display in Digital Read Out for TinyG andd G2 board,

**Fixed**
 * Fixed wrong handling of coordinate system (both Grbl and TinyG) - :issue:`36`
 * Fixed an issue where execution was not displayed in 3d view - :issue:`35`

Version 0.3.2
-------------

Release date: 2017-01-14

**Added**
 * *GCode macro support*,
 * Added Grbl configuration watcher to maintain a stable and comptabile Grbl configuration,
 * Added Serial Console user defined display filter to avoid flooding the console,
 * Added preference to set the default view in 3D viewer at application startup ( in _Viewer_ page),
 * Added Reset action in command panel for both TinyG and Grbl,

**Fixed**
 * Fixed error at startup `org.eclipse.swt.SWTException: Failed to execute runnable`,
 * Fixed Grbl not completing execution when Grbl errors happened during streaming,
 * Fixed size of Target board selection dialog not being displayed on high DPI monitors,
 * Fixed rendering of arc motion with rotary axis,
 * Fixed a bug where configured DRO settings were not saved,
 * Fixed a bug where the update confirmation was covered by the Progress dialog,
 * Fixed TinyG controller wrong handling of Inch units

Version 0.3.1
-------------

Release date: 2016-10-04

**Added**
 * GCode text editor with syntax highlighting and error detection,,
 * Added Shuttle Xpress keybinding for *Homing Sequence*, and *Reset Zero*,
 * Finer control over grid opacity,
 * Customizable background color in 3D preview,
 * Customizable camera controls - :issue:`29`
 * More documentation http://docs.goko.fr/
 * Added array modifier

**Fixed**
 * Fixed G02 and G03 not handled due to middle 0 - :issue:`30`
 * Fixed Translate modifier to apply translation to motion only if they are affected on one axis at least,
 * Fixed execution monitor sometimes missing the few last commands of a file.
 * Fixed Restore Defaults for Quantity fields in preferences. It no longer writes unit in quantity field.

Version 0.3.0
-------------

Release date: 2016-05-01

**Added**
 * Support for Grbl v0.9,
 * New GCode parsing functionalities,
 * Added GCode modifiers support (Translate, scale, segmentize...)
 * Added auto-leveler
 * Added wrapper to convert GCode to 4 axis
 * Added support for Shuttle XPress device
 * Added save/load project features
 * Added execution queue for multiple files execution
 * Improved jog functionnality
 * Online documentation http://docs.goko.fr/

**Fixed**
 * Fixed Grbl buffering issue,
 * Fixed High CPU while connected to serial - `Issue #22 <https://github.com/cncgoko/Goko/issues/22>`_

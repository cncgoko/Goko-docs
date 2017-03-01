.. _xpress:

.. |rapidjog| replace:: Rapid jog

.. |precisejog| replace:: Precise jog

======================
Shuttle Xpress devices
======================

Goko provides the following shortcut to support the use of Shuttle Xpress devices.

Predefined configuration
########################

Predefined configuration file is available in the ``shutlleXpress`` folder of Goko installation folder which binds the Shuttle Xpress button to Goko shortcuts

Compatible shortcuts
####################


============================= ========================================
 Shortcut                      Purpose
============================= ========================================
:kbd:`Ctrl + Alt + Shift + A`   Enable jogging on ``X`` axis
:kbd:`Ctrl + Alt + Shift + Q`   Enable jogging on ``Y`` axis
:kbd:`Ctrl + Alt + Shift + W`   Enable jogging on ``Z`` axis
:kbd:`Ctrl + Alt + Shift + Z`   Enable jogging on ``A`` axis
:kbd:`Ctrl + Alt + Shift + L`   Start homing sequence
:kbd:`Ctrl + Alt + Shift + K`   Set current position as ``0`` on the active axis
:kbd:`Ctrl + Alt + Shift + M`   Kill alarm
:kbd:`Ctrl + Alt + Shift + X`   |rapidjog| -7
:kbd:`Ctrl + Alt + Shift + C`   |rapidjog| -6
:kbd:`Ctrl + Alt + Shift + V`   |rapidjog| -5
:kbd:`Ctrl + Alt + Shift + B`   |rapidjog| -4
:kbd:`Ctrl + Alt + Shift + N`   |rapidjog| -3
:kbd:`Ctrl + Alt + Shift + J`   |rapidjog| -2
:kbd:`Ctrl + Alt + Shift + H`   |rapidjog| -1
:kbd:`Ctrl + Alt + Shift + G`   Stop jog
:kbd:`Ctrl + Alt + Shift + F`   |rapidjog| +1
:kbd:`Ctrl + Alt + Shift + D`   |rapidjog| +2
:kbd:`Ctrl + Alt + Shift + E`   |rapidjog| +3
:kbd:`Ctrl + Alt + Shift + R`   |rapidjog| +4
:kbd:`Ctrl + Alt + Shift + T`   |rapidjog| +5
:kbd:`Ctrl + Alt + Shift + Y`   |rapidjog| +6
:kbd:`Ctrl + Alt + Shift + U`   |rapidjog| +7
:kbd:`Ctrl + Alt + Shift + I`   |precisejog| -1
:kbd:`Ctrl + Alt + Shift + O`   |precisejog| +1
============================= ========================================


Preferences
###########

The speed and step of the jog motion can be configured in the Shuttle Xpress preferences page.

* |rapidjog| performs a continuous jog motion. The feedrate is interpolated between the minimum and maximum feedrate using the outer wheel index.

* |precisejog| performs a discrete jog motion. Each rotation step of the inner wheel will perform a motion of the given step at the given feedrate.


.. figure:: images\shuttleexpress-settings.png
 :align: center
 
 The Shuttle Xpress preferences page
 
 
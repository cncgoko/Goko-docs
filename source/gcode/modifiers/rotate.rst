Rotate
######

Description
===========

Rotates the target gcode using the input parameters.

Parameters
==========

:Rotation axis: the rotation axis

:Angle: the rotation angle, in degrees


.. note:: This modifier can only be applied to a gcode program without arc motion, or a progam where all arcs are defined in the same reference plane. In this case the only allowed rotation axis is the normal of the reference plane.

.. _gcodesupport:

.. role:: unsupported
    :class: unsupportedGCode

=============
GCode support
=============

Supported words
###############


Goko implements *(as much as possible)* the NIST RS274NGC version 3 interpreter as described in `Kramer's NIST RS274NGCv3 Gcode Specification <http://technisoftdirect.com/catalog/download/RS274NGC_3.pdf>`_.

Supported G words:
 - Rapid Linear Motion — **G0**
 - Linear Motion at Feed Rate — **G1**
 - Arc at Feed Rate — **G2** and **G3** 
 - Dwell — **G4**
 - Set Coordinate System Data — **G10** 
 - Plane Selection — **G17**, **G18**, and **G19** 
 - Length Units — **G20** and **G21**
 - :unsupported:`Return to Home — G28 and G30`
 - Straight Probe — **G38.2**
 - Cutter Radius Compensation — **G40**, **G41**, and **G42**
 - :unsupported:`Tool Length Offsets — G43 and G49`
 - Move in Absolute Coordinates — **G53** 
 - Select Coordinate System — **G54** to **G59.3**
 - Set Path Control Mode — **G61**, **G61.1**, and **G64** 
 - :unsupported:`Cancel Modal Motion — G80`
 - :unsupported:`Canned Cycles — G81 to G89`
 - Set Distance Mode — **G90** and **G91**
 - Coordinate System Offsets — **G92**, **G92.1**, **G92.2**, :unsupported:`G92.3`
 - :unsupported:`Set Feed Rate Mode — G93 and G94` 
 - :unsupported:`Set Canned Cycle Return Level — G98 and G99` 

Supported M words:
 - Program Stopping and Ending — **M0**, **M1**, **M2**, **M30**, :unsupported:`M60`
 - Spindle Control — **M3**, **M4**, **M5** 
 - Tool Change — **M6**
 - Coolant Control — **M7**, **M8**, **M9**
 - :unsupported:`Override Control — M48 and M49`

Words marked as :unsupported:`unsupported` will be available in future releases.
 
.. warning:: The above list does not take into account the GCode support of various boards (TinyG, Grbl, etc...). Some of the above words might not be supported by your board.
 
----
 
Modifiers
#########
 
Description
^^^^^^^^^^^

Modifiers are a convenient way to apply modifications to your GCode.
The modifiers you apply to an object are stored in a stack. By navigating up and down the stack, you can change the effect of the modifier.


.. figure:: images/modifier-example.png

 Example : effects of the array modifier

General considerations about modifiers :
 - unlimited number of modifiers can be added to a GCode program,
 - modifiers do not modify the original GCode file, and can be updated or deleted at any time,
 - the order of modifiers in the stack is important. Each modifier affects those that come after it.

.. note:: Some modifier have restrictions regarding the target GCode. For instance, Rotation modifier has a restricted set of option on GCode containing arcs, where arc are only defined in the XY, XZ or YZ planes.

.. _modifiers-list:
Available modifiers
^^^^^^^^^^^^^^^^^^^

 * :ref:`modifier-array`
 * :ref:`modifier-rotate`
 * :ref:`modifier-scale`
 * :ref:`modifier-segmentize`
 * :ref:`modifier-translate`
 * :ref:`modifier-wrap`
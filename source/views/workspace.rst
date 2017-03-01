Workspace
=========

The workspace tree displays various information about the loaded GCode programs and the modifiers applied to them.

.. image:: images\workspace-part.png
	:align: center

GCode node
----------

The GCode node shows all the loaded GCode files as well as the modifiers applied to them. 

When you right click on GCode files, Goko displays a context menu containing actions for the selected file.

The contextual menu for GCode files

.. image:: images\workspace-gcode-right-menu.png
	:align: center

See also:
	* :ref:`gcode_modifiers`		
	* :ref:`Serial console view <view_serial_console>`
	
Execution queue node
--------------------

The Execution queue node display the GCode scheduled for execution and their current state. 

When the execution starts, the programs will be executed in the order they appear in the Execution queue branche of the tree.

.. image:: images\workspace-part-execution.png
	:align: center
	
Add a GCode file for execution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a GCode program to the execution queue, simply right click the file in the GCode node, and click on Add to execution queue. It will be added at the end of the queue.

Remove a GCode file from execution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To remove a file from the execution queue, simply right click the file in the Execution queue node, and click the Remove button. The file will be removed from the execution, but will remain in the workspace.
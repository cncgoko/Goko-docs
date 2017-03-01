.. _connecting:

Connection
==========

Goko provides access to your board via a serial connection.

Serial connection toolbar
#########################

A quick access connection toolbar is located in the upper main toolbar and shows the following elements.

.. image:: images\serial-toolbar.png
	:align: center

#. The currently selected serial port,
#. The refresh serial port list button,
#. The connect button,
#. The disconnect button,
#. The serial setting button, which provides quick access to the serial connection settings.

	
.. note:: Before connecting, make sure to configure the connection settings as required by your board parameters.

====

Serial connection parameters
############################

Serial connections settings can be accessed using the *Window* > *Preferences* > *Serial* or by clicking the cog icons in the `Serial connection toolbar`_ .

.. image:: images\serial-settings.png
	:align: center
	
Refer to your board setting and documentation to configure this settings. See default boards serial settings for connection hints.


Default boards serial settings
------------------------------

.. note:: The following settings are the default one for supported boards. You may have to adapt them to your actual board settings
 
============= ========= ========= =========== =============
Parameter     Grbl v0.8 Grbl v0.9 TinyG v0.97 G2Core v0.99
============= ========= ========= =========== =============
Baudrate      9600      115200    115200      115200               
Data bits     8         8         8           8                            
Parity        None      None      None        None                    
Stops bits    1         1         1           1                    
Flow control  Off       Off       RTS/CTS     RTS/CTS           
============= ========= ========= =========== =============
	
.. warning:: **TinyG v0.97** has a internal setting for its flow control mode ``$ex``. The value of this parameter should match the configuration of the serial connection.


See also:
 * :ref:`Serial console view <view_serial_console>`

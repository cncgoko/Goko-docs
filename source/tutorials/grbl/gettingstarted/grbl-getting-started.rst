.. |serial-console-active| image:: images/activated.png
.. |serial-connect| image:: images/plug-connect.png

*************************
Getting started with Grbl
*************************

This tutorial explains the basics of using Grbl with Goko

Define Grbl as target board
###########################

At first start, the application will prompt the target board selection dialog. For this tutorial, make sure Grbl v0.9 is selected and validate.
The application will starts with the configured components for Grbl.

.. note:: If you already launched Goko with a different target board, you can change it using :menuselection:`Windows --> Preferences --> General`

Configure serial connection
###########################

Grbl uses a Serial connection to communicate. We need to configure Goko so the connection can be established.


.. figure :: images/serial-toolbar.png
 :align: center
 
 The serial toolbar


* Access the serial preferences page by clicking the |cog-button| button in the serial toolbar, or by using the menu :menuselection:`Windows --> Preferences --> Serial`

* Configure the following settings :
   * Baudrate : *115,200*
   * Data bits : *8*
   * Parity : *None*
   * Stop bits: *1*
   * Flow control: *Off*

* Hit Apply to validate your settings.

.. warning :: the above settings are Grbl v0.9 default settings. Make sure they match your Grbl configuration. (Grbl v0.8 for instance use 9,600 as default baudrate)


Activate serial console
#######################

* Make sure the serial console is activated, so you can monitor the incoming and outgoing data.

Serial console displays a green dot |serial-console-active| in the top right corner of its stack border when it's activated.

Connect to Grbl
###############

* Make sure the Grbl board is correctly plugged and powered.

* Select the Grbl Serial port in the combobox (name should be something like :command:`usbserial-AE01DVWD` or :command:`COM10`). If no serial port is listed, try to hit the image:reload.png[Reload Serial ports] button to refresh the list of serial ports.

* Hit the |serial-connect| button to establish connection.

The connection status at the bottom left corner of the application will now display a established connection.

.. figure:: images/serial-connected-status.png
 :align: center
 
 The serial connection status

Grbl configuration
##################

* Once connected, Goko will automatically retrieve Grbl configuration.

If everything goes well, you should be able to see the communication in the console, as shown below :

Requests sent by Goko


.. code-block:: rest

 $$
 $#
 $G

Response from TinyG *(content omitted for brevity)*

.. code-block:: rest

 $0=10 (step pulse, usec)
 $1=25 (step idle delay, msec)
 $2=1 (step port invert mask:00000001)
 $3=0 (dir port invert mask:00000000)
 $4=0 (step enable invert, bool)
 $5=0 (limit pins invert, bool)
 $6=0 (probe pin invert, bool)
 $10=7 (status report mask:00000111)
 
 [G28:0.000,0.000,0.000]
 [G30:0.000,0.000,0.000]
 [G92:0.000,0.000,0.000]
 [TLO:0.000]
 [PRB:0.000,0.000,0.000:0]
 [G0 G54 G17 G21 G90 G94 M0 M5 M9 T0 F0. S0.]



For correct communication between Grbl and Goko, make sure the following parameters are configured as below:

 * :rest:`$10=7 (status report mask:00000111)` Set status report content including Machine Position, Work Position, Planner Buffer

Conclusion
###########

Goko and Grbl are now communicating correctly. You're ready to run your first milling job.

Troubleshooting
###############


:Connection status displays a green connection icon, but data displayed in serial console is unreadable: 
 Check that the Serial settings match on both Goko and Grbl, Baudrate, Data bits, Parity, Stop bits

 
:Connection status displays a green connection icon, but no data is exchanged: 
 Check that the Serial settings match on both Goko and Grbl, including *Flow control*


If you're issue is not listed in the table above, feel free to ask for help here : http://discuss.goko.fr/

.. |serial-console-active| image:: images/activated.png
.. |serial-connect| image:: images/plug-connect.png

	
**************************
Getting started with TinyG
**************************

This tutorial explains the basics of using TinyG with Goko

Define TinyG as target board
############################

At first start, the application will prompt the target board selection dialog. For this tutorial, make sure TinyG v0.97 is selected and validate.
The application will starts with the configured components for TinyG.

.. note:: If you already launched Goko with a different target board, you can change it using menu:Windows[Preferences > General]

Configure serial connection
###########################

TinyG uses a Serial connection to communicate. We need to configure Goko so the connection can be established.


.. figure :: images/serial-toolbar.png
 :align: center
 
 The serial toolbar

* Access the serial preferences page by clicking the image:gear.png[Settings] button in the serial toolbar, or by using the menu menu:Windows[ Preferences > Serial]

* Configure the following settings :
   ** Baudrate : *115,200*
   ** Data bits : *8*
   ** Parity : *None*
   ** Stop bits: *1*
   ** Flow control: *RTS/CTS*

* Hit Apply to validate your settings.

.. warning :: the above settings are TinyG default settings. If you changed them in TinyG configuration before, make sure to adapt your settings.

Activate serial console
#######################

* Make sure the serial console is activated, so you can monitor the incoming and outgoing data.

Serial console displays a green dot |serial-console-active| in the top right corner of its stack border when it's activated.

Connect to TinyG
################

* Make sure the TinyG board is correctly plugged and powered.

* Select the TinyG Serial port in the combobox (name should be something like `usbserial-AE01DVWD` or `COM12`). If no serial port is listed, try to hit the image:reload.png[Reload Serial ports] button to refresh the list of serial ports.

* Hit the image:plug-connect.png[Connect] button to establish connection.

The connection status at the bottom left corner of the application will now display a established connection.

.. figure:: images/serial-connected-status.png
 :align: center
 
 The serial connection status

TinyG configuration
###################

* Once connected, Goko will requests TinyG for configuration groups.

If everything goes well, you should be able to see the communication in the console, as shown below :

Requests sent by Goko

.. code-block:: json

 {"sr":""}
 {"qr":""}
 {"1":""}
 {"2":""}
 {"3":""}
 {"4":""}
 {"x":""}
 {"y":""}
 {"z":""}
 {"a":""}
 {"sys":""}
 {"G55":""}
 {"G56":""}
 {"G57":""}
 {"G58":""}
 {"G59":""}


Response from TinyG *(content omitted for brevity)*


 
.. code-block:: json

 {"r":{"sr":{"posx":0.000,"posy":0.000,"posz":0.000,"posa":0.000,"feed":0.00,"vel":0.00,"unit":1,"coor":1,"dist":0,"frmo":1,"stat":1}},"f":[1,0,10,1190]}
 {"r":{"qr":32},"f":[1,0,10,9617]}
 {"r":{"1":{"ma":0,"sa":0.900,"tr":32.0000,"mi":8,"po":1,"pm":1}},"f":[1,0,9,8694]}
 {"r":{"2":{"ma":1,"sa":0.900,"tr":32.0000,"mi":8,"po":1,"pm":1}},"f":[1,0,9,5984]}
 
 {"r":{"g57":{"x":0.000,"y":0.000,"z":0.000,"a":0.000,"b":0.000,"c":0.000}},"f":[1,0,11,8386]}
 {"r":{"g58":{"x":0.000,"y":0.000,"z":0.000,"a":0.000,"b":0.000,"c":0.000}},"f":[1,0,11,2541]}
 {"r":{"g59":{"x":0.000,"y":0.000,"z":0.000,"a":0.000,"b":0.000,"c":0.000}},"f":[1,0,11,6695]}

 
For correct communication between TinyG and Goko, make sure the following parameters are configured as below: 

 * :json:`{"ej":1}` Enable JSON mode. *Goko only supports JSON communication.*
 * :json:`{"js":1}` Sets JSON strict syntax
 * :json:`{"ex":2}` Enable RTS/CTS as flow control in TinyG,
 * :json:`{"jv":5}` JSON verbosity to Verbose
 * :json:`{"qv":2}` Queue report verbosity to Triple

Conclusion
##########

Goko and TinyG are now communicating correctly. You're ready to run your first milling job.

Troubleshooting
###############


:Connection status displays a green connection icon, but data displayed in serial console is unreadable: 
 Check that the Serial settings match on both Goko and Grbl, Baudrate, Data bits, Parity, Stop bits

 
:Connection status displays a green connection icon, but no data is exchanged: 
 Check that the Serial settings match on both Goko and Grbl, including *Flow control*


If you're issue is not listed in the table above, feel free to ask for help here : http://discuss.goko.fr/

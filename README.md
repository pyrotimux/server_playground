# Server Playground
This is a cool playground for cool kids. Let's test out vagrant ansible and other auto tools.

ansible-module generator and win_dsc5 is created by Trond. No credit toward me.

--------------
This repo is work in progress so use at your own risk!!!
--------------

# Boxes Explanation
kg_control = Ubuntu Controller to run ansible plays <br />
kg_gate = Ubuntu Guacamole server <br />
kg_ad = Windows Active Directory <br />
kg_strgutl = Windows Storage Utilities / Merit Box <br />
kg_ts1 = Terminal Server 1 <br />
kg_ts2 = Terminal Server 2 <br />

The playbook where everthing is stiched up is ps_main.yml
All plays have vars to be modifed at the top. 

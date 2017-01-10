# Server Playground
This is a cool playground for cool kids. Let's test out vagrant ansible and other auto tools.

ansible-module generator and win_dsc5 is created by Trond. No credit toward me.

--------------
This repo is work in progress so use at your own risk!!!
--------------

# Boxes Explanation
kg_control = Ubuntu Controller to run ansible plays : 10.255.10.18<br />
kg_gate = Ubuntu Guacamole server : 10.255.10.19 <br />
kg_ad = Windows Active Directory : 10.255.10.20 <br />
kg_strgutl = Windows Storage Utilities / Merit Box : 10.255.10.21 <br />
kg_ts1 = Terminal Server 1  : 10.255.10.22 <br />
kg_ts2 = Terminal Server 2 : 10.255.10.23 <br />

The playbook where everthing is stiched up is ps_main.yml
All plays have vars to be modifed at the top. 

# Plays Explanation
Stable <br />
--------------
ps_ad_setup = active directory setup <br />
ps_join_domain = example for joining domain of win boxes <br />
ps_disable_nla = disable network level authentication for guacamole on window boxes. <br />
ps_guac_new = new guacamole 0.9 setup <br />
ps_guac_setup = old guac 0.8.3 setup <br />
ps_main = where stable plays are stitched up <br />
ps_merit_box = merti box set up <br />
ps_terminal_server =  terminal server set up <br />
ps_setup_profiles = this is where we set up the folder redirection <br />
ps_profile_folders = this is where we set up the folders. this can be replaced with samba. <br />
ps_redirect_folders = this is where we patch the registry <br />
 <br />
Semi stable <br />
--------------
None

 <br />
Not working <br />
--------------
ps_samba_setup = able to join the domain but not able to get all ad info <br />
ps_sql_installer = going to get rid of this soon since we have dsc modle for it <br />

# Misc
4 users are created in ad and 2 admins can log on to any server. the other two need to setup from rds once we enter the rds license. <br />
ichiban: ichiV@gran7  <br />
niban: niV@gran7 <br />
sanban: sanV@gran7 <br />
yonban: yonV@gran7 <br />
 <br /> <br />
 url for guac: 10.255.10.19:8080/guacamole <br />
 user is vagrant and pass is vagrant <br />
 ansible ssh: 10.255.10.18 <br />
 user is vagrant and pass is vagrant <br />
 




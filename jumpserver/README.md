Jumpserver
=====

This role installs and configures the jumpserver. The user can specify
any configuration parameters they wish to apply.

Requirements
------------

This role requires Ansible 1.4 or higher and platform requirements are listed
in the metadata file.

Role Variables
--------------

The variables that can be passed to this role and a brief description about
them are as follows.

	#install info
	install_log: /tmp/install_jumpserver.log
	py_version: 3.6.1
	
	#db info
	mariadb_dbname: jumpserver
	mariadb_priv_user: jumpserver
	mariadb_priv_pwd: jumpserver
	
	#config.py.j2
	db_engine : "'mysql'"
	db_host : "'127.0.0.1'"
	db_port : "'3306'"
	email_host : "'smtp.163.com'"
	email_port : 25
	email_host_user : "'xxx@163.com'"
	email_host_password : "'xxx'" #auth code or pwd
	email_use_ssl : True
	email_use_tls : False
	email_subject_prefix : "'[Jumpserver]'"
	site_url : "'http://localhost:8000'"
	
	#jump_port
	jump_port: 8000
    
	
Examples
========

1)Install jumpserver
configured:

    - hosts: "{{ hosts }}"
	  roles:
	   - role: jumpserver
	     when: ansible_distribution == "CentOS" and ansible_distribution_major_version == "7"

2)Start jumpserver

 . Use the browser to open the url: http://IP:8000/
 
 . Log in with admin accout and password admin.
 
 . The web interface on the left column of the "application" - > "terminal" in the registration of the two procedures account,
   choose to accept!
   
 . Coco is SSH terminal (loging address: ssh://IP:2222)
 
   Luna is the Web terminal mode (http://IP:5000)


Dependencies
------------

None

License
-------

BSD

Author Information
------------------

Xiaochao Hasun

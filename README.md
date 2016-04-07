# Guardian
Guardian is a network inventory & management system. It has been designed to keep an up to date catalog of device information and to assist in device management.

There are two parts to Guardian, the agent and the server. The server is a simple web server that can be placed either on the intranet or the internet.
The agent is a basic call home device that you install on clients at deployment which reports back to the home server.

# Management Integration
Guardian has been designed to supplement other tools.
## Apple Remote Desktop
Guardian has a device export feature which can assist ARD. To save time scanning a network for devices, you can simply scan the exported inventory file which has live device info.
## RoyalTS
Guardian also has the ability to dynamically generate RoyalTS connection profiles.

# Supported Operating Systems
* Mac OS
* Windows (Planned)
* Linux (Planned)

# Requirements
* Web Server (PHP 5.5 compatible)
* Database Server (MySQL, MSSQL)
* (recommended) Valid SSL certificate

# Installation
1. Upload contents of 'public_html' to web server
2. Import appropriate SQL Schema to database
3. Update database settings in 'config.php'
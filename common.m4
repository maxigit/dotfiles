* Overview dnl
This file defines common m4 function to deal with different hosts like:
+ host name
+ os
+ misc
* Definitions
** Hostname
define(`HOST', esyscmd(uname -n)) 
** OS
define(`OS', esyscmd(uname -s))



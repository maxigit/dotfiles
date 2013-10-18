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


** Misc
*** Or
define(`or', `ifelse($1`'$2,,``or'', ifelse($1,,$2,$1))')
*** Soft define : sdefine

The following function defines only if the macro has not been defined yet.
define(`sdefine', `ifdef(`$1',,`define(`$1', $2)')')

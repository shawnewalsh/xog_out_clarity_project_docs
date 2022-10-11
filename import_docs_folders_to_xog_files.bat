set xogusername=admin
set xoguserpassword=password
set port=81
set server=renkdev013018.bpc.broadcom.net
set sslenabled=false


for /r %%i in (*.xog) do .\xog -username %%xogusername -password %%xoguserpassword -servername %%server -portnumber %%port -sslenabled %%sslenabled -input %%i -output %%i.completed 


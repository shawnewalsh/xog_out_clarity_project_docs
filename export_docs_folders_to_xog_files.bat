@echo off
for /F "tokens=*" %%A in  (projects.txt) do  (
   type prefix.txt >> %%A.xog
   echo  ^<Filter name="parentObjectID" criteria="EQUALS"^>%%A^</Filter^> >> %%A.xog
   type suffix.txt >> %%A.xog
)



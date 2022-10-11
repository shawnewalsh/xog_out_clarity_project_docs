1- On Source Server, create a folder, for example:
c:\docsExported
2- On your Source Server, copy the attached gel script
getProjectIdList.gel
3- Execute the gel script from the Clarity\bin\ folder:
.\gel getProjectIdList.gel
4- This will have created a "projects.txt" file
5- Copy this file to your xog\bin\ folder on your client machine
6- Copy the attached files to your xog\bin\ folder on your client machine
7- Execute this batch file:
export_docs_folders_to_xog_files.bat
This will create the xog files and will export the docs to the 
"c:\docsExported" folder on the source server.
8- Copy the "c:\docsExported" folder to the target server
9- Execute this batch from your xog\bin\ on your client machine
import_docs_folders_to_xog_files.bat
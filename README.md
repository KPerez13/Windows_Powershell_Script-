# Windows_Powershell_Script-
Like ying and yang, when there is one MacOS Setup Script there must be a Windows version as well. 

Windows by default does not let you run scripts, you must run the following command first to allow scripts to run:
Set-ExecutionPolicy RemoteSigned 
press A and then you can run your script 

Once your done running your script, you can re-run Set-ExecutionPolicy with the parameter Default, so it'll look like this:
Set-ExecutionPolicy Default  

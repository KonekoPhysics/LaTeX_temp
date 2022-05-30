whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
　@powershell start-process ”%~0" -verb runas
　echo You're not administrator
　exit
)
echo Made you administrator
copy preamble.sty C:\texlive\texmf-local\tex\platex\
copy jpreamble.sty C:\texlive\texmf-local\tex\platex\
copy prechemistry.sty C:\texlive\texmf-local\tex\platex\
copy prefonts.sty C:\texlive\texmf-local\tex\platex\
copy preprog.sty C:\texlive\texmf-local\tex\platex\
cd C:\texlive\texmf-local\tex\platex\
mktexlsr
pause
exit
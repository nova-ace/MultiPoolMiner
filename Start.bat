cd /d %~dp0

setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

set "command=& .\multipoolminer.ps1 -poolname zpool -wallet 172qrE4VJ2aoRNKtpfuz6puniLPtFWvdKC -username novaace47 -workername test -region us -currency btc,usd -type nvidia -algorithm cryptonight,equihash,lbry,neoscrypt,blake2s,skein,x11evo,xevan,tribus,c11,skunk,nist5,sib,phi,x17,lyra2v2 -donate 0 -watchdog -switchingprevention 10"

pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
powershell -version 5.0 -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc.2/PowerShell-6.0.0-rc.2-win-x64.msi -qb!
pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"

pause

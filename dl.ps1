#$pshost = Get-Host              # Get the PowerShell Host.
#$pswindow = $pshost.UI.RawUI    # Get the PowerShell Host's UI.
#
#$newsize = $pswindow.BufferSize # Get the UI's current Buffer Size.
#$newsize.height = 20            # Set the new buffer's width to 150 columns.m
#$newsize.width = 60            # Set the new Window Width to 150 columns.
#$pswindow.windowsize = $newsize # Set the new Window Size as active.

#Set-Location HKCU:\Console
#New-Item '.\%SystemRoot%_System32_WindowsPowerShell_v1.0_powershell.exe'
#Set-Location '.\%SystemRoot%_System32_WindowsPowerShell_v1.0_powershell.exe'
#New-ItemProperty . FaceName -type STRING -value "Lucida Console"
#New-ItemProperty . FontFamily -type DWORD -value 0x00000036
#New-ItemProperty . FontSize -type DWORD -value 0x000a0000
#New-ItemProperty . FontWeight -type DWORD -value 0x00000190

$url = "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large-v3.bin?download=true"
$outputFile = "models\ggml-base.en.bin"

Import-Module BitsTransfer
Start-BitsTransfer $url $outputFile


Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
# Start-Sleep -Seconds 15.5
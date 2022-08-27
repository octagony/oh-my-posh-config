#Prompt
Import-Module posh-git
Import-Module Terminal-Icons
oh-my-posh.exe init pwsh --config 'C:\Users\Octagony\.config\powershell\stelbnet.omp.json' | Invoke-Expression

# PSReadLine
Set-PSReadlineOption -EditMode Emacs
Set-PSReadlineOption -BellStyle None
Set-PSReadlineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

#Allias
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias nn nano
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'


#Utilites
function which($command){
	Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

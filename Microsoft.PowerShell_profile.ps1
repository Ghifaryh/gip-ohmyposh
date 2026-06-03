Import-Module PSReadLine

# --- 1. Linux/Fish-like Terminal Experience ---
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle Inline
Set-PSReadLineOption -Colors @{ InlinePrediction = '#606060' }
Set-PSReadLineOption -EditMode Windows

# --- 2. Intuitive Key Bindings ---
Set-PSReadLineKeyHandler -Chord "RightArrow" -Function AcceptSuggestion
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
Set-PSReadLineKeyHandler -Chord "Tab" -Function MenuComplete
Set-PSReadLineKeyHandler -Chord "UpArrow" -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Chord "DownArrow" -Function HistorySearchForward

# --- 3. Prompt Theme (Oh-My-Posh) ---
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/Ghifaryh/gip-ohmyposh/main/atomicBit-gipmodified-new.omp.json' | Invoke-Expression

# --- 4. Aliases & Custom Functions ---
Set-Alias -Name g -Value git

function NpmDev { npm run dev }
Set-Alias nrd NpmDev

function wafTIK { ssh gip@192.168.255.117 }
Set-Alias -Name tikwaf -Value wafTIK

function giproj { cd D:\Stuff\Projects }
Set-Alias -Name project -Value giproj

function open-laragon { Start-Process "C:\laragon\laragon.exe" }
Set-Alias -Name laragon -Value open-laragon

function gip-gitlab {
     git config --local user.email "mhghifary@itenas.ac.id"
     git config --get user.email
}
Set-Alias -Name giplab -Value gip-gitlab

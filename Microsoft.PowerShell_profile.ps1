Import-Module PSReadLine

# I modded this:
# oh-my-posh init pwsh --config 'C:\Users\mhghi\AppData\Local\Programs\oh-my-posh\themes\atomicBit.omp.json' | Invoke-Expression

oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/Ghifaryh/gip-ohmyposh/main/atomicBit-gipmodified-new.omp.json'| Invoke-Expression


# oh-my-posh init pwsh --config ~/atomicBit.omp.json | Invoke-Expression

# oh-my-posh init pwsh --config 'C:\Users\mhghi\AppData\Local\Programs\oh-my-posh\themes\ys.omp.json' | Invoke-Expression

# oh-my-posh init pwsh --config 'C:\Users\mhghi\AppData\Local\Programs\oh-my-posh\themes\takuya.omp.json' | Invoke-Expression

Set-PSReadLineKeyHandler -Chord "Tab" -Function AcceptSuggestion

Set-PSReadLineKeyHandler -Chord "RightArrow" -Function ForwardWord

# Set-PSReadLineOption -PredictionViewStyle ListView

Set-Alias -Name g -Value git

# clear-host

function NpmDev {
  npm run dev
}

Set-Alias nrd NpmDev


function wafTIK {
    ssh gip@192.168.255.117
}

Set-Alias -Name tikwaf -Value wafTIK

function giproj { cd D:\Stuff\Projects }

Set-Alias -Name project -Value giproj

function open-laragon {
    Start-Process "C:\laragon\laragon.exe"
}

Set-Alias -Name laragon -Value open-laragon



# oh-my-posh init pwsh --config 'C:\Users\mhghi\AppData\Local\Programs\oh-my-posh\themes\craver.omp.json' | Invoke-Expression

# oh-my-posh init pwsh --config 'C:\Users\mhghi\AppData\Local\Programs\oh-my-posh\themes\tonybaloney.omp.json' | Invoke-Expression

# oh-my-posh init pwsh --config 'C:\Users\mhghi\AppData\Local\Programs\oh-my-posh\themes\the-unnamed.omp.json' | Invoke-Expression

# oh-my-posh init pwsh --config 'C:\Users\mhghi\AppData\Local\Programs\oh-my-posh\themes\chips.omp.json' | Invoke-Expression



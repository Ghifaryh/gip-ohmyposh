Import-Module PSReadLine

# I modded this:
oh-my-posh init pwsh --config 'C:\Users\mhghi\AppData\Local\Programs\oh-my-posh\themes\atomicBit.omp.json' | Invoke-Expression

# oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/Ghifaryh/gip-ohmyposh/main/atomicBit-gipmodified-new.omp.json'| Invoke-Expression

oh-my-posh init pwsh --config ~/atomicBit.omp.json | Invoke-Expression

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



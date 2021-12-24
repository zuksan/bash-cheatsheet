scoop install 7zip
scoop install aria2
scoop install git
scoop install openssh
[environment]::setenvironmentvariable('GIT_SSH', (resolve-path (scoop which ssh)), 'USER')

scoop bucket add extras
scoop install everything
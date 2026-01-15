## Technical
just some notes for myself, may be useful for others

### Some routes
https://account-data.hytale.com/my-account/get-launcher-data?arch=amd64&os=linux
Gives entitlements, profiles, and for some reason "patchlines"

https://launcher.hytale.com/version/release/launcher.json
Launcher URL. 99% sure this is completely useless for us

https://launcher.hytale.com/version/release/jre.json
Kind of nice - is a direct download for the JRE
I have an adoptium API but if I can just plug into this that's fantastic

https://account-data.hytale.com/patches/linux/amd64/release/0
Honestly, not sure. Has .pwr and .sig in the response. Sends a bearer but seemingly not required.
My guess is that it's game patches, not sure why a bearer matters though
I also guess that this is a standard format but idrc at the moment
Yes very sure this is a patch, gonna have to learn how this works

Okay yes I am 100% sure now it's a patch thing that optimizes by only giving you a diff
my hope and guess is that it's just a .zip and I can lazily extract and it'll find and replace
maybe not removals though

## How 2 structure
I am tying the oauth client to the HytaleClient itself
I think we should register dio middleware for oauth check & refresh
that or our own client middleware doesn't matter a ton


mutt
====

# Fergus' mutt config (Gmail)

## Installation
```
cd ~/.mutt
mkdir -p tmp cache/{body,header}
touch certs passwd
```

Add the following to passwd:
```
set imap_pass="[your_password]"
set smtp_pass="[your_password]"
```

```
gpg -r [keyID] -e passwd
shred passwd
mv passwd.gpg accounts/
```

If gpg-agent misbehaves try:
```
killall -q gpg-agent
eval $(gpg-agent --daemon)
```

You also need to install goobook (with pip)
```
sudo pip install goobook
```

" vim:ft=mkd

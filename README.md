mutt
====

# Fergus' (neo)mutt config 

## Installation
```
cd ~/.mutt
vim foo
./install
```

Add the following to foo:
```
set from="[email]"
set imap_user="[passwd]"
set imap_pass="[passwd]"
alternates "[address|address]"  # optional
set signature=[txt_file]        # optional
unmy_hdr *                      # optional
my_hdr X-URL: [your_domain]     # optional
my_hdr X-PGP-Key: [asc]         # optional
set pgp_sign_as=0xXXXXXXXX      # optional
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

If you're using Gmail, install goobook
```
pip install --user goobook
```

" vim:ft=mkd

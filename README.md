(neo)mutt
====

# Fergus' (neo)mutt config 

## Installation

Instalation is 3-step:

1. Run the installer
2. Add encrypted account settings
3. Edit muttrc for account preferences

### Installer

The install script makes a timestamped backup of any existing mutt instances.

```
cd ~/.mutt
./install
```

### FastMail

Encrypt the following settings...
```
set from="[email]"
set imap_user="[email]"
set imap_pass="[passwd]"
alternates "[address|address]"  # optional
set signature="[filename]"      # optional
unmy_hdr *                      # optional
my_hdr X-URL: [your_domain]     # optional
my_hdr X-PGP-Key: [asc]         # optional
set pgp_sign_as=0xXXXXXXXX      # optional
```

### Gmail

Encrypt the following settings...
```
set imap_user="[email]"
set imap_pass="[passwd]"
set signature="[filename]"      # optional
set pgp_sign_as=0xXXXXXXXX      # optional
```

### Svaha

Encrypt the following settings...
```
set from="[email]"
set imap_user="[email]"
set imap_pass="[passwd]"
set signature="[filename]"      # optional
unmy_hdr *                      # optional
my_hdr X-URL: [your_domain]     # optional
my_hdr X-PGP-Key: [asc]         # optional
set pgp_sign_as=0xXXXXXXXX      # optional
```

### Encryption

Add account settings to a txt file named after the account, then encrypt, add to 
the mutt accounts directory and source in the profile. Delete the unencrypted 
txt settings file.

```
gpg -r [keyID] -e [filename]
mv filename.gpg ~/.mutt/accounts/
shred [filename]
```

If gpg-agent misbehaves try:
```
killall -q gpg-agent
eval $(gpg-agent --daemon)
```

## Addressbook

If you're using Gmail, install goobook: https://gitlab.com/goobook/goobook
```
pip install --user goobook
```

For regular CardDAV, use pycarddav: https://github.com/geier/pycarddav  
Note: requires Python2 and vobject < 0.9

```
pip install --user pycarddav
```

" vim:ft=mkd

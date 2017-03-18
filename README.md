mutt
====

# Fergus' (neo)mutt config 

## Installation

Instalation is 2-step:

1. Run the installer
2. Add encrypted account settings
3. Edit muttrc for account preferences

### Installer

The install script makes a timestamped backup of any existing mutt instances.

```
cd ~/.mutt
./install
```

### Gmail

Encrypt the following settings...
```
set imap_user="[email]"
set imap_pass="[passwd]"
set signature="[filename]"      # optional
set pgp_sign_as=0xXXXXXXXX      # optional
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

### Encryption

Add account settings to a txt file named after the account, then encrypt, add to 
the mutt accounts directory and source in the profile.

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

If you're using Gmail, install goobook
```
pip install --user goobook
```

" vim:ft=mkd

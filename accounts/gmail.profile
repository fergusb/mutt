# NAME: Gmail
# DESC: Private email account
# Note: change [Google Mail] to [Gmail] as needed

# decrypt password
source "gpg --no-tty -qd ~/.mutt/accounts/gmail.gpg |"
source "~/.mutt/accounts/gmail.eu.conf"

set from = fergus.bremner@gmail.com
set folder = "imaps://fergus.bremner@gmail.com@imap.gmail.com:993"
set imap_user = "fergus.bremner@gmail.com"
#set imap_pass = [gpg]
set smtp_url  = "smtp://$imap_user@smtp.gmail.com:587"
# set smtp_pass = [gpg]
set signature = "~/.mutt/accounts/gmail.txt"

account-hook $folder "set folder=$folder"

unmy_hdr *       # delete existing header-settings, if there are any.
my_hdr X-PGP-Key: http://www.acedia.com/keys/08C9BC02.asc

# specify the uid to use when encrypting/signing
set pgp_sign_as = 0x08C9BC02

# vim: ft=muttrc

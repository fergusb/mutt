# NAME: FastMail
# DESC: private account

# load account settings
source "gpg --no-tty -qd ~/.mutt/accounts/fastmail.gpg |"

# load FastMail defaults
source "~/.mutt/accounts/fastmail.conf"

# encrypted settings
# set from = [gpg]
# set imap_user = [gpg]
# set imap_pass = [gpg]
# alternates [gpg]
# set signature = [gpg]
# unmy_hdr * [gpg]
# my_hdr X-URL: [gpg]
# my_hdr X-PGP-Key: [gpg]
# set pgp_sign_as=0xXXXXXXXX

# NAME: Google Mail
# DESC: Private gmail account

# decrypt password
source "gpg --no-tty -qd ~/.mutt/accounts/gmail.gpg |"

# load Google Mail defaults
source "~/.mutt/accounts/gmail.eu.conf"

# NAME: FastMail
# DESC: private account

# load account settings
source "gpg --no-tty -qd ~/.mutt/accounts/fastmail.gpg |"

# load FastMail defaults
source "~/.mutt/accounts/fastmail.conf"

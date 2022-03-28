#!/bin/bash
# Run Postfix
/usr/sbin/postfix start

# Run Apache:
/usr/sbin/apachectl -D FOREGROUND -k start

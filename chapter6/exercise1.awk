BEGIN { FS=":" ; ORS="\n\n"}
{print "dn: uid="$1", dc=example, dc=com\ncn: "$1,$3"\nsn: "$3"\ntelephoneNumber: "$4}

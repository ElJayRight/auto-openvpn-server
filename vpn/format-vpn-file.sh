#!/bin/bash
file_name=/opt/vpn-conf/$1.ovpn
cp /opt/vpn-conf/client.conf $file_name
echo "<ca>" >> $file_name
cat /opt/easy-rsa/easyrsa3/pki/ca.crt >> $file_name
echo "</ca>" >> $file_name
echo "<cert>" >> $file_name
cat /opt/easy-rsa/easyrsa3/pki/issued/$1.crt >> $file_name
echo "</cert>" >> $file_name
echo "<key>" >> $file_name
cat /opt/easy-rsa/easyrsa3/pki/private/$1.key >> $file_name
echo "</key>" >> $file_name
echo "<tls-auth>" >> $file_name
cat /opt/vpn-conf/ta.key >> $file_name
echo "</tls-auth>" >> $file_name

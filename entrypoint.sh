#cd /v2raybin
#echo -e "$CONFIG_JSON" > config.json
#if [ "$CERT_PEM" != "$KEY_PEM" ]; then
#  echo -e "$CERT_PEM" > cert.pem
#  echo -e "$KEY_PEM"  > key.pem
#fi

cd /v2ray
#echo -e "$CONFIG_JSON" > config.json
ls -l
wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
mkdir v2ray-v$VER-linux-64
unzip v2ray.zip -d v2ray-v$VER-linux-64
echo show current dir
pwd
ls -lR
mv v2ray-v$VER-linux-64/v2ray .
mv v2ray-v$VER-linux-64/v2ctl .
mv v2ray-v$VER-linux-64/geoip.dat .
mv v2ray-v$VER-linux-64/geosite.dat .
ls -l
rm -fR /v2ray/v2ray-v$VER-linux-64
unzip -h
ls -l 

chmod +x v2ray v2ctl
sed -i "s/your_uuid/$UUID/g" config.json
./v2ray

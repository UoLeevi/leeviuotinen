sudo systemctl stop leeviuotinen.service
sudo rm -f /etc/systemd/system/leeviuotinen.service

unset PID
PID=$(ps aux | grep '[d]otnet leeviuotinen.dll' | awk '{print $2}')
if [ ! -z "$PID" ]; then while sudo kill $PID; do sleep 1; done; fi
unset PID

cd /var/aspnetcore/leeviuotinen/leeviuotinen
sudo cp system/leeviuotinen.service /etc/systemd/system/
sudo rm -fr /var/aspnetcore/leeviuotinen-app
sudo dotnet publish -o /var/aspnetcore/leeviuotinen-app -c Release

cd /var/aspnetcore/leeviuotinen-app
sudo rm -r /var/aspnetcore/leeviuotinen

sudo systemctl start leeviuotinen.service

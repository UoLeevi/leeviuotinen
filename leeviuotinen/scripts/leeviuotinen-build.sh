unset PID
PID=$(ps aux | grep '[d]otnet leeviuotinen.dll' | awk '{print $2}')
if [ ! -z "$PID" ]; then while sudo kill $PID; do sleep 1; done; fi
unset PID

cd /var/aspnetcore
sudo rm -fr leeviuotinen
sudo rm -fr leeviuotinen-app
sudo git clone https://github.com/UoLeevi/leeviuotinen.git
cd leeviuotinen/leeviuotinen
sudo dotnet publish -o /var/aspnetcore/leeviuotinen-app -c Release
cd /var/aspnetcore/leeviuotinen-app
sudo rm -r /var/aspnetcore/leeviuotinen
sudo dotnet leeviuotinen.dll &

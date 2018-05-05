# Stop currently runing service
sudo systemctl stop leeviuotinen.service

# Remove previous version of the service file
sudo rm -f /etc/systemd/system/leeviuotinen.service

# Stop currently runing leeviuotinen.dll if it wasn't runing as a service
unset PID
PID=$(ps aux | grep '[l]eeviuotinen.dll' | awk '{print $2}')
if [ ! -z "$PID" ]; then while sudo kill $PID; do sleep 1; done; fi
unset PID

# Change to directory with leeviuotinen.csproj
cd /var/aspnetcore/leeviuotinen/leeviuotinen

# Copy new version of the service file to replace the previous on
sudo cp system/leeviuotinen.service /etc/systemd/system/

# Remove previous version of the main application directory
sudo rm -fr /var/aspnetcore/leeviuotinen-app

# Publish compile new version of application
sudo dotnet publish -o /var/aspnetcore/leeviuotinen-app -c Release

# Change directory with leeviuotinen.dll
cd /var/aspnetcore/leeviuotinen-app

# Remove source code directory
sudo rm -r /var/aspnetcore/leeviuotinen

# Reload service files
sudo systemctl daemon-reload

# Restart the application service
sudo systemctl restart leeviuotinen.service

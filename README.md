# pinglog

### Installing
* Download the project in its final directory  
* Open `pinglog.bash_aliases` and change PINGLOG_PATH to the path you have downloaded the project and PINGLOG_STORAGE to the path where you want to keep your logs. Defaluts are  `PINGLOG_PATH="/root/pinglog"` and `PINGLOG_STORAGE="/mnt/sda1/pinglog"`
* Append `pinglog.bash_aliases` to the default aliases and variables file. Depends on the system but usually you can do:
```bash 
cat /your/path/to/pinglog/pinglog.bash_aliases >> ~/.bashrc
```
Or, on OpenWRT: 
```bash 
cat /your/path/to/pinglog/pinglog.bash_aliases >> /etc/profile
```

* Open the crontab:
```bash
crontab -e
```
* Add to the crontab, with the full paths:
```bash
* * * * * /path/to/pinglog/pinglog.sh' >> /path/to/storage/`date +%Y-%m-%d`.txt
```

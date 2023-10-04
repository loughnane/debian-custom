dpkg --get-selections | grep -v deinstall | awk '{print $1}' > packages.list


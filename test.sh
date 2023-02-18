#!/bin/bash

mkdir /etc/test/
cp test.py /etc/test/test.py
for ((i=1;i<=20;i++))
do
if scp "$HOME/test-systemd/test.py" "root@dp$i:/etc/test/test.py"
then
if scp "$HOME/test-systemd/test123.service" "root@dp$i:/etc/systemd/system/test123.service"
then
ssh "root@dp$1" "systemctl start test123; systemctl enable test123"
fi
fi
done


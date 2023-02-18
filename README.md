# Test systemd service
Данный скрипт копирует с локального хоста 2 файла: test.py и test123.service на 20 удаленных хостов fs1..fs20, затем запускает сервис test123. Сервис test123 в свою очередь запускает один раз скрипт test.py
## Установка
### Клонирование репозитория
`cd ~; git clone https://github.com/aliquews/test-systemd.git; cd test-systemd`
### Сделать скрипт test.sh исполняемым
`chmod +x ./test.sh`
### Запуск скрипта
`./test.sh`





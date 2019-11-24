#!/bin/bash

tar cvpjf nemo_original.tar.bz2 /usr/bin/nemo /usr/lib/x86_64-linux-gnu/libexempi.so.3 /usr/lib/x86_64-linux-gnu/libexempi.so.3.4.5  
cat << EOF >restore_original_nemo_in_sudo.sh
sudo rm /usr/lib/x86_64-linux-gnu/libexempi.so.3 && sudo rm /usr/lib/x86_64-linux-gnu/libexempi.so.3.4.5 && sudo tar xvpfj nemo_original.tar.bz2 -C / && notify-send -i info "Setting restore nemo good ! Настройки восстановлены ! donate support https://money.yandex.ru/to/410014999913799"
EOF
chmod +x restore_original_nemo_in_sudo.sh
sudo tar xvpfj nemo.tar.bz2 -C / && notify-send -i info "Nemo find type file by Griggorii@gmail.com restart session please ! donate support https://money.yandex.ru/to/410014999913799"

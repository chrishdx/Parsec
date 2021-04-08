sudo sh -c "echo 'h264_freq=550' >> /boot/config.txt"
sudo sh -c "echo 'over_voltage=2 ' >> /boot/config.txt"
sudo sh -c "echo 'gpu_mem=256' >> /boot/config.txt"
sudo sh -c "echo 'disable_splash 1' >> /boot/config.txt"
sudo sh -c "echo 'app_lan_quality=1' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'app_wan_quality=1' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'vencoder_bitrate=3' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'client_vsync=0' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'encoder_fps=30' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'encoder_min_qp=8' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'client_immersive=1' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'client_overlay=0' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'network_try_lan=1' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'client_windowed=0' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo '#client_window_x=1280' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo '#client_window_y=720' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'client_audio_buffer=26000' >> /home/pi/.parsec/config.txt"
sudo sh -c "echo 'usbhid.mousepoll=8' >> /boot/cmdline.txt"
sudo apt install openvpn -y
sudo systemctl enable openvpn
sudo systemctl enable openvpn@client.service
sudo sh -c "echo 'AUTOSTART=\"all\"' >> /etc/default/openvpn"
sudo mv /etc/openvpn/*.ovpn /etc/openvpn/offsite-client.conf
curl https://raw.githubusercontent.com/virtualhere/script/main/install_server | sudo sh
sudo reboot now

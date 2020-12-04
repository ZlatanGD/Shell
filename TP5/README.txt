GOJAK 
Zlatan
3801873

(Comme je ne suis pas connecté a la PPTI, je n'ai pas d'output pour les question 2 et 3.)

Exercice 1
1)input: grep localhost /etc/hosts | grep -E "([0-9]{1,3}.){3}[0-9]{1,3}" | tr -s '\t' ';' | cut -d ';' -f 1
  output: 127.0.0.1

2)lpoptions -l|cut -d "*" -f 2 | cut -d " " -f 1

3)ip addr | grep -E  "eth[0-9]" | grep -E "[0-255].{3}[0-255]" | tr -s ' '' ' | cut -d  " " -f 3

4)input: cat /etc/group | grep `whoami`
 output:adm:x:4:syslog,zlatangd
cdrom:x:24:zlatangd
sudo:x:27:zlatangd
dip:x:30:zlatangd
plugdev:x:46:zlatangd
lpadmin:x:120:zlatangd
lxd:x:131:zlatangd
zlatangd:x:1000:
sambashare:x:132:zlatangd

5) input: df | sort -nk 4 | tail -n 1 | tr -s ' ' ';' | cut -d ";" -f 6
  output: /

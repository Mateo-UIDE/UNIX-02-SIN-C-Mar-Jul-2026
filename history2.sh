 1  cd evaluation/orion
    2  ls -F
    3  mv notas apuntes
    4  mkdir respaldos
    5  git add .
    6  git commit -m "Fix problema 1: estructura de directorios corregida
    7  git add.
    8  git add .
    9  git commit -m "Fix problema 1: estructura de directorios corregida"
   10  git push origin eval_p2_1_g1
   11  mv telemetria.log apuntes/
   12  mv config.tmp config.conf
   13  ls -F
   14  ls -F apuntes/
   15  git add .
   16  git commit -m "Fix problema 2: archivos movidos y renombrados"
   17  git push origin eval_p2_1_g1
   18  chmod 640 apuntes/telemetria.log
   19  ls -l apuntes/telemetria.log
   20  git add .
   21  git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
   22  git push origin eval_p2_1_g1
   23  chmod u+x script.sh
   24  ls -l script.sh
   25  chmod o-w config.conf
   26  ls -l script.sh
   27  ls -l confif.conf
   28  ls -l config.conf
   29  git add .
   30  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   31  git push origin eval_p2_1_g1
   32  chmod u+s script.sh
   33  ls -l script.sh
   34  git add .
   35  git commit -m "Fix problema 5: SUID activado en script.sh"
   36  git push origin eval_p2_1_g1
   37  chmod +t /tmp/orion_zone
   38  ls -ld /tmp/orion_zone
   39  sudo chmod +t /tmp/orion_zone
   40  ls -ld /tmp/orion_zone
   41  sudo mkdir -p /tmp/orion_zone
   42  sudo chmod 777 /tmp/orion_zone
   43  sudo chmod +t /tmp/orion_zone
   44  ls -ld /tmp/orion_zone
   45  git add .
   46  git commit -m "Fix problema 6: sticky bit en /tmp/orion_zone"
   47  git push origin eval_p2_1_g1
   48  gpg --full-generate-key
   49  history
   50  gpg --encrypt --recipient lyra@orion.lab --output evaluation/orion/apuntes/telemetria.log.gpg evaluation/orion/apuntes/telemetria.log
   51  gpg --encrypt --recipient mateon.charro@gmail.com --output evaluation/orion/apuntes/telemetria.log.gpg evaluation/orion/apuntes/telemetria.log
   52  gpg --list-keys lyra@orion.lab
   53  gpg --list-keys
   54  git status
   55  git add .
   56  gpg --list-keys lyra@orion.lab
   57  gpg --full-generate-key
   58  gpg --list-keys lyra@orion.lab
   59  gpg --encrypt --recipient lyra@orion.lab --trust-model always --output evaluation/orion/apuntes/telemetria.log.gpg evaluation/orion/apuntes/telemetria.log
   60  gpg --encrypt --recipient lyra@orion.lab --trust-model always --output apuntes/telemetria.log.gpg apuntes/telemetria.log
   61  ls -l apuntes/telemetria.log.gpg
   62  ls -l apuntes/
   63  file apuntes/telemetria.log.gpg
   64  cat apuntes/telemetria.log.gpg
   65  git add .
   66  git commit -m "Fix problema 7: llave GPG generada y telemetria.log cifrado"
   67  git push origin eval_p2_1_g1
   68  gpg --clearsign --output config.conf.asc config.conf
   69  gpg --verify script.sh.sig script.sh
   70  gpg --detach-sign --output script.sh.sig script.sh
   71  gpg --verify script.sh.sig script.sh
   72  git add .
   73  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   74  git push origin eval_p2_1_g1
   75  git status
   76  history
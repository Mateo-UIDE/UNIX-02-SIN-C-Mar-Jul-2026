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
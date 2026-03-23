#Este comando lista la clave privada
gpg --list-secret-keys --keyid-format=long

#Este comentario exporta la secret key
gpg --armor --export-secret-keys 3D9C9780B6DA4C47
# Kerberos kserver
## @edt ASIX M11-SAD Curs 2018-2019

**danicano/k18:ksdaniel** servidor kerberos detach. 
  Assignar-li el nom de host: *ksdaniel.hisxdaniel.org*

Servidor kerberos. Aquest servidor crea els principals corresponents als clàssics
usuaris que tenim també a ldap.

Les característiques principals són:
 * s'ha d'anomenar kserver.edt.org
 * usuaris amb nomenclatura ldap:   pere, pau (administrador), jordi, marta, anna, julia.
 * usuaris administradors kerberos: superuser (administrador), marta/admin.
 * es crea un principal de host corresponent al servidor host/sshd.edt.org.
 * tot el procés és autometitzat i el servidor s'executa detach.

Execució:
```
docker run --rm --name ksdaniel.hisxdaniel.org -h ksdaniel.hisxdaniel.org --net mynet -d danicano/k18:ksdaniel
```

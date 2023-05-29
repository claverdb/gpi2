# gpi2
cd Mifare/Mifare\ Classic\ Tool/

#Pasamos tareas del gradle
echo "Pasamos los task del gradle"
sudo ./gradlew tasks

#Analisis estatico con pmd
echo "Creamos el analisis estatico"
sudo /home/alumno/Escritorio/gpi2/pmd-bin-7.0.0-rc2/bin/pmd check -d . -R rulesets/java/quickstart.xml -f text > ../../analisiEstaticoMifare

#pasamos los test
echo "Pasamos los test"
./gradlew test

# Paquete debugeable
sudo ./gradlew assembleDebug
#Movemos el paquete fuera de todas las carpetas
sudo cp ./app/build/outputs/apk/debug/app-debug.apk ../../




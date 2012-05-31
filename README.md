stichsh
=======

beide Skripte mit chmod a+x dateiname.sh ausführbar machen.

install.sh brauchste nur einmal ausführen.

stitch.sh muss in dem ordner liegen, in dem die bilder sind. beim
ausführen auch mit cd in den bilderordner navigieren.

beispiel:

./install.sh

cd bilderordner/
screen
./stitch.sh   (alternativ: time ./stitch.sh   gibt am ende die zeitdauer aus)
[ctrl+a und d]  zum detachen der screen session
screen -r zum reattachen der screen session

stitch.sh editieren, um zB beim optimising den viewport-angle
anzupassen. Theoretisch müsstest du mit einem ziemlich kleinen Wert
arbeiten, also 1 oder so.. für wenig Verzerrung.

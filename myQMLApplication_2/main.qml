import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: Screen.width/2
    height: Screen.height/2

    Text {
        id: myText
        text: "<b>My own text</b><br>¿qué debemos cumplir? <br>Recordar qué somos<br>Hacer el bien<br>Aprender de cada experiencia<br>Dar amor"
        anchors.centerIn: parent
        font.pixelSize: Window.width/100*4
        font.family: "Verdana"
        //font.capitalization: Font.AllUppercase
        //font.weight: Font.Bold
        horizontalAlignment: Text.AlignRight
    }
}

import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    x: 360
    y: 110
    color: "#ff3388"

    Text {
        id: texto
        text: "Cargando hora..."
        anchors.centerIn: parent
        color: "white"
        font.pointSize: 30
    }

    Timer {
        id: timer1
        running: false
        repeat: true
        interval: 1000

        onTriggered: {
            texto.text = obj.leerLaHora()
        }
    }

    Component.onCompleted:  {
        timer1.start()
    }
}

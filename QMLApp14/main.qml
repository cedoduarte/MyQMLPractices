import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1000
    height: 500
    x: 135
    y: 120
    color: "#000000"

    Rectangle {
        property bool giroHabilitado: true
        property int totalGrados: 0

        signal desactivado
        signal activado

        onActivado: {
            giroHabilitado = true
        }

        onDesactivado: {
            giroHabilitado = false
        }

        id: area1
        antialiasing: true
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "#88ff33"

        MouseArea {
            anchors.fill: parent

            onClicked: {
                area1.desactivado()
            }

            onDoubleClicked: {
                area1.activado()
            }
        }

        Component.onCompleted: {
            area1.desactivado.connect(informa)
            area1.activado.connect(reinica)
        }

        function informa() {
            texto2.text = "Deshabilitado en " + area1.totalGrados + " grados"
        }

        function reinicia() {
            texto2.text = "0 grados"
            area1.rotation = 0
            area1.totalGrados = 0
        }
    }

    Row {
        spacing: 10
        width: 800
        anchors.horizontalCenter: area1.horizontalCenter

        Rectangle {
            width: 100
            height: 50
            color: "#cc00cc"

            Text {
                id: cencendido
                anchors.centerIn: parent
                text: girar.running ? "Detener" : "Girar"
                //text: "texto 1"
                color: "#ffff00"
            }

            MouseArea {
                id: areaDeEncendido
                anchors.fill: parent

                onClicked: {
                    if (!girar.running && area1.giroHabilitado) {
                        girar.start()
                    } else {
                        girar.stop()
                    }
                }
            }
        }

        Rectangle {
            width: 300
            height: 50
            color: "#0000cc"

            Text {
                id: texto1
                anchors.centerIn: parent
                text: area1.giroHabilitado ? "Giro Habilitado" : "Giro Inhabilitado"
                //text: "texto2"
                color: "#ffff00"
            }
        }

        Rectangle {
            width: 300
            height: 50
            color: "#0000cc"

            Text {
                id: texto2
                anchors.centerIn: parent
                text: "0 grados"
                color: "#00ffff"
            }
        }
    }

    Timer {
        id: girar
        repeat: true
        interval: 100
        running: true

        onTriggered: {
            area1.rotation += 5
            area1.totalGrados++
            texto2.text = "" + area1.totalGrados + " grados."
        }
    }
}

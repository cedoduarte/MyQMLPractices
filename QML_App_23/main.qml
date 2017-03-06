import QtQuick 2.6
import QtQuick.Window 2.2
import com.qt.crono 1.0

Window {
    visible: true
    id: vp
    width: 500
    height: 500
    x: 360
    y: 110
    color: "#666666"
    title: "Ejemplo"

    Crono {
        id: obj

        onTiempoCambiado: {
            textoTiempo.text = obj.mTiempo
        }

        onSegundoCambiado: {
            cajaReloj.color = Qt.colorEqual(cajaReloj.color, "#cc66cc") ? "#cccccc" : "#cc66cc"
        }

        onMinutoCambiado: {
            vp.color = Qt.colorEqual(vp.color, "#666666") ? "#ff8833" : "#666666"
        }
    }

    Rectangle {
        id: cajaReloj
        anchors.centerIn: parent
        color: "#cc66cc"
        width: 250
        height: 70

        Text {
            id: textoTiempo
            text: "--:--:--"

            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 20
            color: "#000000"
            font.pointSize: 30
            horizontalAlignment: Text.AlignLeft
        }
    }

    /*
    Timer {
        id: timer1
        running: true
        repeat: true
        interval: 10

        onTriggered: {
            textoTiempo.text = obj.tiempo()
        }
    }
    */

    Row {
        id: controles
        spacing: 10
        anchors.verticalCenter: cajaReloj.bottom
        anchors.verticalCenterOffset: 50
        anchors.horizontalCenter: cajaReloj.horizontalCenter

        Rectangle {
            id: boton1
            width: 100
            height: 30
            color: "#cccccc"

            Text {
                id: textoBoton1
                anchors.centerIn: parent
                text: "Iniciar"

                onTextChanged: {
                    if (textoBoton1.text === "Iniciar") {
                        boton1.color = "#ffff00"
                    } else {
                        boton1.color = "#cccccc"
                    }
                }
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    if (textoBoton1.text === "Iniciar") {
                        textoBoton1.text = "Detener"
                        obj.inicia()
                    } else {
                        textoBoton1.text = "Iniciar"
                        obj.detiene()
                        obj.mTiempo = "00:00:00:00"
                    }
                }
            }
        }

        Rectangle {
            id: boton2
            width: 100
            height: 30
            color: "#cccccc"

            Text {
                id: textoBoton2
                anchors.centerIn: parent
                text: "Modificar"
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    obj.minutos = "12"
                }
            }
        }
    }
}












































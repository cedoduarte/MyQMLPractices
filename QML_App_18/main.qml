import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    x: 360
    y: 110
    color: "#333333"

    MouseArea {
        anchors.fill: parent

        onClicked: {
            xAnimacion.start()
            yAnimacion.start()
        }
    }

    Rectangle {
        id: origen1
        width: 50
        height: 50
        x: 30
        y: 250
        radius: 25
        color: "#ffff00"

        MouseArea {
            anchors.fill: parent

            onClicked: {
                origen1.z = destino.z + 1
                origen1.x = destino.x
                origen1.scale = 0.3
            }
        }

        Behavior on x {
            NumberAnimation {
                duration: 800
                easing.type: Easing.InBounce
            }
        }

        SequentialAnimation on x {
            id: xAnimacion
            loops: Animation.Infinite
            running: false

            NumberAnimation {
                duration: 1500
                from: 50
                to: 350
                easing.type: Easing.OutElastic
            }

            NumberAnimation {
                duration: 1500
                from: 350
                to: 50
                easing.type: Easing.OutElastic
            }
        }

        SequentialAnimation on y {
            id: yAnimacion
            loops: Animation.Infinite
            running: false

            NumberAnimation {
                duration: 1200
                from: 50
                to: 350
                easing.type: Easing.OutElastic
            }

            NumberAnimation {
                duration: 800
                from: 350
                to: 50
                easing.type: Easing.OutElastic
            }
        }
    }

    Rectangle {
        id: origen2
        width: 50
        height: 50
        x: 30
        y: 350
        radius: 25
        color: "green"

        MouseArea {
            anchors.fill: parent

            onClicked: {
                origen2.z = destino.z + 1
                origen2.x = destino.x
                origen2.y = destino.y
                origen2.scale = 0.3
            }
        }

        Behavior on x {
            NumberAnimation {
                duration: 800
                easing.type: Easing.InBounce
            }
        }

        Behavior on y {
            NumberAnimation {
                duration: 800
                easing.type: Easing.OutBounce
            }
        }

        Behavior on scale {
            NumberAnimation {
                duration: 800
                from: 1.0
                to: 0.2
                easing.type: Easing.OutElastic
            }
        }
    }

    Rectangle {
        id: destino
        width: 50
        height: 50
        x: 400
        y: 250
        radius: 25
        color: "red"
    }
}

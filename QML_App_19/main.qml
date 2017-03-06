import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    x: 360
    y: 110
    color: "red"

    MouseArea {
        anchors.fill: parent

        onClicked: {
            //objeto.x = 350
            desplazamiento.start()
        }
    }

    Image {
        id: visor
        source: "http://orig08.deviantart.net/b35a/f/2007/114/7/f/the_city_by_night_by_mohain.jpg"
        anchors.fill: parent
        antialiasing: true
    }

    Rectangle {
        id: objeto
        width: 100
        height: 50
        x: 50
        y: 150
        color: "#ff8833"
        border.width: 6
        border.color: "red"
        opacity: 0.6

        /*Behavior on x {
            NumberAnimation {
                duration: 3000
            }
        }*/
    }

    //SequentialAnimation {
    ParallelAnimation {
        // animación del rectángulo

        id: desplazamiento
        PropertyAnimation {
            target: objeto
            property: "x"
            to: 350
            duration: 2000
            running: false
        }

//        PauseAnimation {
//            duration: 3000
//        }

        PropertyAnimation {
            to: 350
            duration: 2000 // 2 segundos
            running: false
            target: objeto
            property: "y"
        }

        PropertyAnimation {
            to: 180
            duration: 2000
            running: false
            target: objeto
            property: "rotation"
        }
    }
}

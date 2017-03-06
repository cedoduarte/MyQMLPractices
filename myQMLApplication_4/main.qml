import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    x: 250
    y: 250
    color: "#ff8833"

    Rectangle {
        width: 250
        height: 250
        anchors.centerIn: parent
        color: "red"

        Text {
            id: name
            text: qsTr("text over the image")
            anchors.centerIn: parent
            z: 100
        }

        Image {
            id: myImage
            source: "qrc:/sun.jpg"
            sourceSize.width: 30
            sourceSize.height: 30
            anchors.fill: parent
            z: 99
            fillMode: Image.PreserveAspectFit
            rotation: -35
        }
    }
}

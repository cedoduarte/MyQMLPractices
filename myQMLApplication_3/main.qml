import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: myWindow
    visible: true
    width: 500
    height: 500
    title: qsTr("Hello World")


    Rectangle {
        width: 300
        height: 250
        color: "#ff8833"
        anchors.centerIn: parent



        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onClicked: {
                //Qt.quit()
            }

            onDoubleClicked: {
                myWindow.color = "blue"
            }

            onReleased: {
                myWindow.color = "pink"
            }

            onPressed: {
                myWindow.color = "red"
                myText.text = "Pos x:" + mouse.x + " Pos y:" + mouse.y
            }

            /*
            onPositionChanged: {
                myText.text = "Pos x:" + mouse.x + " Pos y:" + mouse.y
            }
            */

            /*
            onHoveredChanged: {
                myWindow.color = "red"
            }
            */

            /*
            onEntered: {
                myWindow.color = "brown"
            }

            onExited: {
                myWindow.color = "yellow"
            }
            */
        }

        Text {
            id: myText
            text: "my own text"
            anchors.centerIn: parent
        }
    }
}

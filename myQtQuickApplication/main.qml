import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: Screen.width/2
    height: Screen.height/2
    title: qsTr("Hello World")

    Rectangle {
        id: myNewRect
        width: 100
        height: 130
        color: "#ff8833"
        anchors.centerIn: parent
        border.color: "#00cccc"
        border.width: 4
        radius: 15
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#ff8833";
            }
            GradientStop {
                position: 0.42;
                color: "#2969d7";
            }
            GradientStop {
                position: 1.00;
                color: "#db4545";
            }
        }
        rotation: 15
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            myText.setText("My <b>own</b> text")
        }
    }

    Text {
        id: myText
        anchors.centerIn: parent

        function setText(myOwnText) {
            text = myOwnText
        }
    }
}

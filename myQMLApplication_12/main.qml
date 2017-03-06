import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    id: myMainWindow
    title: "My Window"
    width: 500
    height: 500
    x: 360
    y: 110
    color: "green"

    Rectangle {
        anchors.fill: parent
        color: "#ff8800"
        id: myContainer
        focus: true

        MouseArea {
            anchors.fill: parent

            onClicked: {
                parent.focus = true
                parent.displayFocus()
            }
        }

        Column {
            spacing: 10
            anchors.centerIn: parent

            Area {
                id: area_1
                width: 300
                height: 100
            }

            Area {
                id: area_2
                width: 300
                height: 100
            }
        }

        function displayFocus() {
            if (area_1.theFocus) {
                text1.text = "Area 1 has the focus"
            } else if (area_2.theFocus) {
                text1.text = "Area 2 has the focus"
            } else {
                text1.text = "The container has the focus"
            }
        }

        Text {
            id: text1
            text: "Nothing happens"
            font.pixelSize: 40
            color: "yellow"
        }
    }
}

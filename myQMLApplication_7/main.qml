import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true

    width: 500
    height: 500
    x: (Screen.width - 500) / 2
    y: (Screen.height - 500) / 2
    color: "green"

    Flickable {
        width: parent.width
        height: parent.height
        interactive: true
        contentWidth: 10
        contentHeight: 10
        x: parent.width/8
        y: parent.height/8

        Row {
            id: myRow

            spacing: 15

            Column {
                spacing: 15

                Rectangle {
                    width: 100
                    height: 100
                    color: "#ff8833"
                }

                Rectangle {
                    width: 100
                    height: 100
                    color: "#ff3388"
                }

                Rectangle {
                    width: 100
                    height: 100
                    color: "#33ff88"
                }
            }

            Column {
                spacing: 15

                Rectangle {
                    width: 100
                    height: 100
                    color: "blue"
                }

                Rectangle {
                    width: 100
                    height: 100
                    color: "white"
                }

                Rectangle {
                    width: 100
                    height: 100
                    color: "brown"
                }
            }
        }
    }
}

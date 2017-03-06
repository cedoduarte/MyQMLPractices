import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true

    width: 500
    height: 500
    x: 360
    y: 110
    color: "green"

    Grid {
        spacing: 8
        width: 300
        anchors.centerIn: parent
        rows: 3
        columns: 2

        Rectangle {
            width: 50
            height: 50
            color: "red"
            Text {
                text: "Hola"
            }
        }

        Rectangle {
            width: 50
            height: 50
            color: "red"
            Text {
                text: "Hola"
            }
        }

        Rectangle {
            width: 50
            height: 50
            color: "red"
            Text {
                text: "Hola"
            }
        }

        Rectangle {
            width: 50
            height: 50
            color: "red"
            Text {
                text: "Hola"
            }
        }

        Rectangle {
            width: 50
            height: 50
            color: "red"
            Text {
                text: "Hola"
            }
        }
    }
}

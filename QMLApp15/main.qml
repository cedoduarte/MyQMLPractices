import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    id: ventana
    width: 500
    height: 500
    x: 360
    y: 110
    color: "#000000"

    Column {
        id: columnaCentral
        spacing: 10
        anchors.centerIn: parent
        width: 300

        Rectangle {
            id: area1
            objectName: "area1"
            width: 340
            height: 100
            x: -20
            color: "red"
            opacity: activeFocus ? 1.0 : 0.2
            border.width: activeFocus ? 6 : 2
            border.color: "#ff8833"
            focus: true

            onFocusChanged: {
                if (activeFocus) {
                    width += 40
                } else {
                    width -= 40
                }
            }

            onWidthChanged: {
                if (activeFocus) {
                    x -= 20
                } else {
                    x += 20
                }
            }

            KeyNavigation.up: area3
            KeyNavigation.down: area2
        }

        Rectangle {
            id: area2
            objectName: "area2"
            width: 300
            height: 100
            color: "blue"
            opacity: activeFocus ? 1.0 : 0.2
            border.width: activeFocus ? 6 : 2
            border.color: "#ff8833"
            focus: false

            onFocusChanged: {
                if (activeFocus) {
                    width += 40
                } else {
                    width -= 40
                }
            }

            onWidthChanged: {
                if (activeFocus) {
                    x -= 20
                } else {
                    x += 20
                }
            }

            KeyNavigation.up: area1
            KeyNavigation.down: area3
        }

        Rectangle {
            id: area3
            objectName: "area3"
            width: 300
            height: 100
            color: "yellow"
            opacity: activeFocus ? 1.0 : 0.2
            border.width: activeFocus ? 6 : 2
            border.color: "#ff8833"
            focus: false

            onFocusChanged: {
                if (activeFocus) {
                    width += 40
                } else {
                    width -= 40
                }
            }

            onWidthChanged: {
                if (activeFocus) {
                    x -= 20
                } else {
                    x += 20
                }
            }

            KeyNavigation.up: area2
            KeyNavigation.down: area1
        }
    }
}

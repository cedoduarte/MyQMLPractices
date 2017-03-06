import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: (Screen.width - 500) / 2
    height: (Screen.height - 500) / 2
    color: "green"

    MouseArea {
        anchors.fill: parent

        Grid {
            rows: 4
            columns: 1
            spacing: 8
            anchors.centerIn: parent

            MouseArea {
                width: 250
                height: 120

                Rectangle {
                    id: topRectangle
                    width: 250
                    height: 120
                    radius: 8
                    border.width: 5
                    border.color: focus ? "magenta" : "yellow"
                    color: "cyan"
                    focus: false

                    Text {
                        anchors.centerIn: parent
                        id: topText
                        text: "Unselected"
                    }

                    onFocusChanged: {
                        if (focus) {
                            topText.text = "Selected"
                        } else {
                            topText.text = "Unselected"
                        }
                    }

                    Keys.onPressed: {
                        if (event.key == Qt.Key_X) {
                            topText.text = "X pressed"
                        }
                    }

                    Keys.onReleased: {
                        if (focus) {
                            topText.text = "Selected"
                        } else {
                            topText.text = "Unselected"
                        }
                    }
                }

                onClicked: {
                    topRectangle.focus = true
                }
            }

            Rectangle {
                width: 250
                height: 120
                radius: 8

                Row {
                    anchors.centerIn: parent
                    spacing: 8

                    Rectangle {
                        width: 100
                        height: 100
                        border.color: "red"
                        border.width: 5
                        radius: 8
                        color: "yellow"

                        Text {
                            id: texto1
                            text: mouseArea1.cantidadClicks
                            anchors.centerIn: parent
                        }
                    }

                    Rectangle {
                        width: 100
                        height: 100
                        border.color: "red"
                        border.width: 5
                        radius: 8
                        color: "yellow"

                        Text {
                            id: texto2
                            text: mouseArea2.cantidadClicks
                            anchors.centerIn: parent
                        }
                    }
                }
            }

            MouseArea {
                property int cantidadClicks: 0
                id: mouseArea1
                width: 250
                height: 50

                Rectangle {
                    width: 250
                    height: 50
                    radius: 8

                    Text {
                        anchors.centerIn: parent
                        text: "Click in this Area 1"
                    }
                }

                onClicked: {
                    actualizaCantidadClicks(this)
                    topRectangle.focus = false
                }
            }

            MouseArea {
                property int cantidadClicks: 0
                id: mouseArea2
                width: 250
                height: 50

                Rectangle {
                    width: 250
                    height: 50
                    radius: 8

                    Text {
                        anchors.centerIn: parent
                        text: "Click in this Area 2"
                    }
                }

                onClicked: {
                    actualizaCantidadClicks(this)
                    topRectangle.focus = false
                }
            }
        }

        onClicked: {
            topRectangle.focus = false
        }
    }

    function actualizaCantidadClicks(mouseArea) {
        mouseArea.cantidadClicks++;
    }
}

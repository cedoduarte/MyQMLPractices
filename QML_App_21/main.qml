import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    x: 360
    y: 110

    Rectangle {
        id: contenedor
        anchors.fill: parent
        color: "#333333"

        Rectangle {
            id: areaAnclada
            width: 300
            height: 300
            color: "red"
            //anchors.centerIn: parent
            state: "e5"

            states: [
                State {
                    name: "e1"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.top: contenedor.top
                        anchors.left: contenedor.left
                    }
                },
                State {
                    name: "e2"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.top: contenedor.top
                        anchors.horizontalCenter: contenedor.horizontalCenter
                    }
                },
                State {
                    name: "e3"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.top: contenedor.top
                        anchors.right: contenedor.right
                    }
                },
                State {
                    name: "e4"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.verticalCenter: contenedor.verticalCenter
                        anchors.left: contenedor.left
                    }
                },
                State {
                    name: "e5"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.verticalCenter: contenedor.verticalCenter
                        anchors.horizontalCenter: contenedor.horizontalCenter
                    }
                },
                State {
                    name: "e6"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.right: contenedor.right
                        anchors.verticalCenter: contenedor.verticalCenter
                    }
                },
                State {
                    name: "e7"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.left: contenedor.left
                        anchors.bottom: contenedor.bottom
                    }
                },
                State {
                    name: "e8"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.horizontalCenter: contenedor.horizontalCenter
                        anchors.bottom: contenedor.bottom
                    }
                },
                State {
                    name: "e9"

                    AnchorChanges {
                        target: areaAnclada
                        anchors.right: contenedor.right
                        anchors.bottom: contenedor.bottom
                    }
                }
            ]

            transitions: [
                Transition {
                    AnchorAnimation {
                        duration: 1000
                        easing.type: Easing.OutBounce
                    }
                }
            ]

            Grid {
                width: 200
                height: 200
                anchors.centerIn: parent
                spacing: 10
                columns: 3

                Boton {
                    alineacion: 1
                }

                Boton {
                    alineacion: 2
                }

                Boton {
                    alineacion: 3
                }

                Boton {
                    alineacion: 4
                }

                Boton {
                    alineacion: 5
                }

                Boton {
                    alineacion: 6
                }

                Boton {
                    alineacion: 7
                }

                Boton {
                    alineacion: 8
                }

                Boton {
                    alineacion: 9
                }
            }
        }

        function alinea(alineacion) {
            switch (alineacion) {
            case 1:
                areaAnclada.state = "e1"
                break
            case 2:
                areaAnclada.state = "e2"
                break
            case 3:
                areaAnclada.state = "e3"
                break
            case 4:
                areaAnclada.state = "e4"
                break
            case 5:
                areaAnclada.state = "e5"
                break
            case 6:
                areaAnclada.state = "e6"
                break
            case 7:
                areaAnclada.state = "e7"
                break
            case 8:
                areaAnclada.state = "e8"
                break
            case 9:
                areaAnclada.state = "e9"
                break
            default:
                areaAnclada.state = "e5"
            }
        }
    }
}

import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    id: ventana
    width: 500
    height: 500
    x: 360
    y: 110
    color: "#333333"

    Column {
        id: columna
        anchors.fill: parent
        spacing: 0
        state: "visible1"

        states: [
            State {
                name: "visible1"

                PropertyChanges {
                    target: area1
                    height: 350
                }

                PropertyChanges {
                    target: area2
                    height: 5
                }

                PropertyChanges {
                    target: area3
                    height: 5
                }
            },
            State {
                name: "visible2"

                PropertyChanges {
                    target: area1
                    height: 5
                }

                PropertyChanges {
                    target: area2
                    height: 350
                }

                PropertyChanges {
                    target: area3
                    height: 5
                }
            },
            State {
                name: "visible3"

                PropertyChanges {
                    target: area1
                    height: 5
                }

                PropertyChanges {
                    target: area2
                    height: 5
                }

                PropertyChanges {
                    target: area3
                    height: 350
                }
            }
        ]

        transitions: [
            Transition {
                to: "visible1"

                ParallelAnimation {
                    NumberAnimation {
                        target: area1
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }

                    NumberAnimation {
                        target: area2
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }

                    NumberAnimation {
                        target: area3
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }
            },
            Transition {
                to: "visible2"

                ParallelAnimation {
                    NumberAnimation {
                        target: area1
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }

                    NumberAnimation {
                        target: area2
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }

                    NumberAnimation {
                        target: area3
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }
            },
            Transition {
                to: "visible3"

                ParallelAnimation {
                    NumberAnimation {
                        target: area1
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }

                    NumberAnimation {
                        target: area2
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }

                    NumberAnimation {
                        target: area3
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }
            }
        ]

        Titulo {
            titulo: "Area 1"

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    /*
                    area1.state = "visible"
                    area2.state = "invisible"
                    area3.state = "invisible"
                    */
                    columna.state = "visible1"
                }
            }
        }

        Area {
            id: area1
            urlImagen: "https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Common-dog-behaviors-explained.jpg?itok=FSzwbBoi"
            //state: "visible"

            /*
            states: [
                State {
                    name: "visible"

                    PropertyChanges {
                        target: area1
                        height: 350
                    }
                },
                State {
                    name: "invisible"

                    PropertyChanges {
                        target: area1
                        height: 5
                    }
                }
            ]

            transitions: [
                Transition {
                    from: "visible"
                    to: "invisible"

                    NumberAnimation {
                        target: area1
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                },
                Transition {
                    from: "invisible"
                    to: "visible"

                    NumberAnimation {
                        target: area1
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }
            ]
            */
        }

        Titulo {
            titulo: "Area 2"

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    /*
                    area1.state = "invisible"
                    area2.state = "visible"
                    area3.state = "invisible"
                    */
                    columna.state = "visible2"
                }
            }
        }

        Area {
            id: area2
            urlImagen: "http://www.cat-breeds-encyclopedia.com/images/Siamese-cat-on-couch.jpg"

            /*
            states: [
                State {
                    name: "visible"

                    PropertyChanges {
                        target: area2
                        height: 350
                    }
                },
                State {
                    name: "invisible"

                    PropertyChanges {
                        target: area2
                        height: 5
                    }
                }
            ]

            transitions: [
                Transition {
                    from: "visible"
                    to: "invisible"

                    NumberAnimation {
                        target: area2
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                },
                Transition {
                    from: "invisible"
                    to: "visible"

                    NumberAnimation {
                        target: area2
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }
            ]
            */
        }

        Titulo {
            titulo: "Area 3"

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    /*
                    area1.state = "invisible"
                    area2.state = "invisible"
                    area3.state = "visible"
                    */
                    columna.state = "visible3"
                }
            }
        }

        Area {
            id: area3
            urlImagen: "https://www.pets4homes.co.uk/images/articles/2550/large/hereditary-health-and-genetic-diversity-within-the-chihuahua-dog-breed-54c6214dd9f30.jpg"

            /*
            states: [
                State {
                    name: "visible"

                    PropertyChanges {
                        target: area3
                        height: 350
                    }
                },
                State {
                    name: "invisible"

                    PropertyChanges {
                        target: area3
                        height: 5
                    }
                }
            ]

            transitions: [
                Transition {
                    from: "visible"
                    to: "invisible"

                    NumberAnimation {
                        target: area3
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                },
                Transition {
                    from: "invisible"
                    to: "visible"

                    NumberAnimation {
                        target: area3
                        duration: 2000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }
            ]
            */
        }
    }
}

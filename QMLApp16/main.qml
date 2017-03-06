import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    color: "#99aa99"
    x: 360
    y: 110

    ListModel {
        id: modeloDeArticulos

        ListElement {
            nombre: "vaso de vidrio común"
            descripcion: "Hecho en Brasil - diámetro de base y altura 10cm"
            precio: 11.50
        }

        ListElement {
            nombre: "vaso de metal"
            descripcion: "Hecho en Argentina - acero inoxidable"
            precio: 8.00
        }

        ListElement {
            nombre: "vaso de plástico"
            descripcion: "Hecho en China - con dibujos de anime"
            precio: 10.50
        }

        ListElement {
            nombre: "vaso de vidrio común"
            descripcion: "Hecho en Brasil - diámetro de base y altura 10cm"
            precio: 11.50
        }

        ListElement {
            nombre: "vaso de metal"
            descripcion: "Hecho en Argentina - acero inoxidable"
            precio: 8.00
        }

        ListElement {
            nombre: "vaso de plástico"
            descripcion: "Hecho en China - con dibujos de anime"
            precio: 10.50
        }

        ListElement {
            nombre: "vaso de vidrio común"
            descripcion: "Hecho en Brasil - diámetro de base y altura 10cm"
            precio: 11.50
        }

        ListElement {
            nombre: "vaso de metal"
            descripcion: "Hecho en Argentina - acero inoxidable"
            precio: 8.00
        }

        ListElement {
            nombre: "vaso de plástico"
            descripcion: "Hecho en China - con dibujos de anime"
            precio: 10.50
        }
    }

    Component {
        id: componenteDelegado

        Rectangle {
            width: 400
            height: 50
            color: "#ff8833"
            border.width: 4
            border.color: "red"

            Row {
                spacing: 10
                anchors.centerIn: parent

                Rectangle {
                    width: 150
                    height: 30
                    color: "#ffffff"
                    border.width: 2
                    border.color: "black"

                    Text {
                        anchors.centerIn: parent
                        text: nombre
                        width: 140
                        font.pointSize: 14
                    }
                }

                Rectangle {
                    width: 150
                    height: 30
                    color: "#ffffff"
                    border.width: 2
                    border.color: "black"

                    Text {
                        anchors.centerIn: parent
                        text: descripcion
                        width: 140
                        font.pointSize: 10
                        wrapMode: Text.WordWrap // lo pongo porque una descripción es más larga
                    }
                }

                Rectangle {
                    width: 50
                    height: 30
                    color: "#ffffff"
                    border.width: 2
                    border.color: "black"

                    Text {
                        anchors.centerIn: parent
                        text: "$" + precio
                        width: 40
                        font.pointSize: 14
                    }
                }
            }
        }
    }

    ListView {
        id: visor
        width: 400
        height: 400
        anchors.centerIn: parent
        model: modeloDeArticulos
        delegate: componenteDelegado
        spacing: 30
    }
}

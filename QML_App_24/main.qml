import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    color: "#666666"
    x: 360
    y: 110

    property int tamanyoDeLetra: 16

    Rectangle {
        id: contenedor
        width: 400
        height: 300
        color: "#333333"
        anchors.centerIn: parent

        Column {
            spacing: 10
            anchors.centerIn: parent

            Row {
                spacing: 10

                Text {
                    id: labelUsuario
                    text: "Usuario:"
                    color: "#ffffff"
                    anchors.verticalCenter: areaTextInput.verticalCenter
                    font.pointSize: tamanyoDeLetra
                }

                Rectangle {
                    id: areaTextInput
                    width: 200
                    height: tamanyoDeLetra + tamanyoDeLetra * 0.2
                    color: "#ffffff"
                    anchors.margins: tamanyoDeLetra
                    focus: false

                    TextInput {
                        id: textInputUsuario
                        text: "Ingresar usuario"
                        anchors.fill: parent
                        font.pointSize: tamanyoDeLetra
                        focus: false

                        validator: RegExpValidator { regExp: /.+@.+/ }

                        onFocusChanged: {
                            if (focus && text === "Ingresar usuario") {
                                textInputUsuario.text = ""
                            } else {
                                if (text === "") {
                                    text = "Ingresar usuario"
                                }
                            }
                        }
                    }
                }
            }

            Row {
                spacing: 10

                Text {
                    id: labelClave
                    text: "Clave:"
                    color: "#ffffff"
                    anchors.verticalCenter: areaTextInputClave.verticalCenter
                    font.pointSize: tamanyoDeLetra
                }

                Rectangle {
                    id: areaTextInputClave
                    width: 200
                    height: tamanyoDeLetra + tamanyoDeLetra * 0.2
                    color: "#ffffff"
                    anchors.margins: tamanyoDeLetra

                    TextInput {
                        id: textInputClave
                        anchors.fill: parent
                        font.pointSize: tamanyoDeLetra
                        echoMode: TextInput.Password
                    }
                }
            }

            Rectangle {
                id: botonEnviar
                width: 100
                height: 30
                anchors.right: parent.right
                color: "gray"

                Text {
                    id: textoBoton
                    text: "Enviar"
                    anchors.centerIn: parent
                    color: "#ffffff"
                    font.pointSize: tamanyoDeLetra
                }
            }
        }
    }
}

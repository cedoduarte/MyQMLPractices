import QtQuick 2.0

Item {
    property color colorDeFondo: "red"
    property string urlImagen: "none"

    width: parent.width
    height: 5

    Rectangle {
        anchors.fill: parent
        color: colorDeFondo

        Image {
            id: foto
            source: urlImagen
            anchors.fill: parent
        }
    }
}

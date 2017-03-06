import QtQuick 2.0

Item {
    width: 50
    height: 50
    property int alineacion: 0

    Rectangle {
        anchors.fill: parent
        color: "#ff8833"
        border.width: 3
        border.color: "white"
        radius: 5

        MouseArea {
            anchors.fill: parent

            onClicked: {
                contenedor.alinea(alineacion)
            }
        }
    }
}

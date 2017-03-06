import QtQuick 2.0

Item {
    property int theWidth: 180
    property int theHeight: 350
    property string theText: "None"

    width: theWidth
    height: theHeight

    Rectangle {
        anchors.centerIn: parent
        anchors.fill: parent
        color: "#ffff00"
        border.width: 5
        border.color: "#ff00ff"
        radius: 20

        Text {
            id: myText
            text: theText
            anchors.fill: parent
            wrapMode: Text.WordWrap
            font.pixelSize: parent.width/100*10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}

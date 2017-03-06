import QtQuick 2.0

Item {
    property bool theFocus: myArea.focus
    property int theTimes: 0

    Rectangle {
        id: myArea
        anchors.centerIn: parent
        anchors.fill: parent
        color: focus ? "#80ff00" : "#e6e688"
        border.width: focus ? 6 : 2
        border.color: "#000000"

        MouseArea {
            anchors.fill: parent

            onClicked: {
                parent.focus = true
                myContainer.focus = false
                myContainer.displayFocus()
            }
        }

        onFocusChanged: {
            if (focus) {
                theTimes++;
            }
        }

        Text {
            anchors.centerIn: parent
            text: myArea.focus ? "Times " + theTimes : "Foco Inactivo"
        }
    }
}

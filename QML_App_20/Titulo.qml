import QtQuick 2.0

Item {
    property string titulo: "ninguno"

    width: parent.width
    height: 50

    Rectangle {
        color: "yellow"
        gradient: Gradient {
            GradientStop {
                position: 0.18;
                color: "#ea1919";
            }
            GradientStop {
                position: 0.40;
                color: "#d7dd28";
            }
            GradientStop {
                position: 0.52;
                color: "#ffffff";
            }
            GradientStop {
                position: 0.76;
                color: "#2bc48c";
            }
        }
        anchors.fill: parent

        Text {
            anchors.centerIn: parent
            text: titulo
            font.pointSize: 30
        }
    }
}

import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true

    width: 500
    height: 500
    x: 360
    y: 110
    color: "green"

    Grid {
        anchors.centerIn: parent
        spacing: 8
        rows: 2

        MyText {}
        MyText {}
        MyText {}
        MyText {}
    }
}

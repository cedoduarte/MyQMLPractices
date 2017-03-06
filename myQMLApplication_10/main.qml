import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    property string author: "Carlos Duarte"

    visible: true

    id: myMainWindow
    title: "My Example by: " + author
    width: 500
    height: 500
    x: 360
    y: 110
    color: "green"

    MyText {
        anchors.centerIn: parent
        theWidth: 300
        theHeight: 150
        theText: "New text here"
    }
}

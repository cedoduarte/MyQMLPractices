import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true

    width: 500
    height: 500
    x: (Screen.width - 500) / 2
    y: (Screen.width - 500) / 2
    color: "green"

    Flickable {
        width: 500
        height: 500
        x: 30
        y: 30
        contentWidth: myImage.sourceSize.width
        contentHeight: myImage.sourceSize.height-100
        boundsBehavior: Flickable.StopAtBounds
        interactive: true

        Image {
            id: myImage
            source: "file:/Users/cedo/Documents/QtProjects/myQMLApplication_11/cat.jpg"
        }
    }

    Text {
        id: myImageSize
        text: "<b>" + myImage.sourceSize.width + "x"
              + myImage.sourceSize.height + "</b>"
        color: "red"
        font.pointSize: 40
    }

    Rectangle {
        width: 200
        height: 200
        color: "red"
        opacity: 0.0
        x: 30
        y: 30
    }
}

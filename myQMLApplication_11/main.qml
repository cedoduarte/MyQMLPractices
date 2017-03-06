import QtQuick 2.5
import QtQuick.Window 2.0
import "util.js" as Util // siempre empieza con letras mayúsculas

Window {
    visible: true
    id: myMainWindow
    width: 600
    height: 600
    x: (Screen.width-500)/2
    y: (Screen.height-500)/2
    color: "green"

    Text {
        id: myMessageText
        text: "10 added with 35 is: " +  Util.addNumbers(10, 35)
        z: 1
    }

    Row {
        Image {
            id: myImage
            source: Util.myRemoteImageUrl
            width: 200
            height: 200
            sourceSize.width: 200
            sourceSize.height: 200
        }

        Image {
            id: myImage2
            source: Util.myImageUrl
            width: 200
            height: 200
            sourceSize.width: 200
            sourceSize.height: 200
        }
    }
}

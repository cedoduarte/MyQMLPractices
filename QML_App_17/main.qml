import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.XmlListModel 2.0

Window {
    visible: true
    width: 500
    height: 500
    color: "#99aa99"
    x: 360
    y: 110

    Component {
        id: componenteDelegado

         Rectangle {
             width: 400
             height: 200
             color: "#ff8833"
             border.width: 4
             border.color: "red"

             Row {
                 spacing: 6
                 anchors.centerIn: parent

                 Column {
                     spacing: 4
                     width: 200

                     Rectangle {
                         width: 200
                         height: 30
                         color: "#ffffff"
                         border.width: 2
                         border.color: "black"

                         Text {
                             anchors.centerIn: parent
                             text: "<b>" + nombre + "</b>"
                             width: 140
                             font.pointSize: 16
                         }
                     }

                     Rectangle {
                         width: 200
                         height: 70
                         color: "#ffffff"
                         border.width: 2
                         border.color: "black"

                         Text {
                             anchors.centerIn: parent
                             text: descripcion
                             width: 140
                             font.pointSize: 14
                             wrapMode: Text.WordWrap
                         }
                     }

                     Rectangle {
                         id: rectPrecio
                         width: 200
                         height: 70
                         color: "#ffffff"
                         border.width: 2
                         border.color: "black"

                         Text {
                             anchors.centerIn: parent
                             text: "<b>$" + (precio/100*2).toFixed(2) + "</b>"
                             width: 200
                             font.pointSize: 36
                         }
                     }
                 }

                 Image {
                     id: foto
                     source: imagen
                     width: 180
                     height: 180
                     sourceSize.width: 180
                     sourceSize.height: 180
                 }
             }
         }
    }

    XmlListModel {
        id: modeloDeListaXml
        source: "http://codigosenaccion.com/nube/datos.xml"
        query: "/articulos/articulo"

        XmlRole {
            name: "nombre"
            query: "nombre/string()"
        }

        XmlRole {
            name: "descripcion"
            query: "descripcion/string()"
        }

        XmlRole {
            name: "precio"
            query: "precio/number()"
        }

        XmlRole {
            name: "imagen"
            query: "imagen/string()"
        }
    }

    ListView {
        id: visor
        width: 400
        height: 400
        anchors.centerIn: parent
        model: modeloDeListaXml
        delegate: componenteDelegado
        spacing: 30
    }
}

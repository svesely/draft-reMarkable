import QtQuick 2.0
import "../js/Main.js" as MainJS

Rectangle {
    property int itemNumber: 0

    property alias t_name   : tname.text
    property alias t_desc   : tdesc.text
    property alias t_imgFile: timg.source
    //property alias t_imgFile: imgLoader.src


    y: itemNumber * 200 + 30
    anchors.left:parent.left
    anchors.right:parent.right
    height:180
    anchors.margins:70
    border.color:"#cccccc"
    border.width: 3

    MouseArea {
        id:ma
        anchors.fill:parent
    }

    Text {
        id:tname
        anchors.top:parent.top
        anchors.left:parent.left
        anchors.right:parent.right
        anchors.topMargin:10
        anchors.leftMargin:20
        font.family:"Noto Serif"
        font.pixelSize:80
        font.italic: true
    }
    Text {
        id:tdesc
        anchors.bottom:parent.bottom
        anchors.left:parent.left
        anchors.right:parent.right
        anchors.leftMargin:20
        anchors.bottomMargin:10
        font.family:"Noto Serif"
        font.pixelSize:40
        font.italic: true
    }
    Image {
        id:timg
        fillMode: Image.PreserveAspectFit
        width: height
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom:parent.bottom
        anchors.margins:15
    }

}

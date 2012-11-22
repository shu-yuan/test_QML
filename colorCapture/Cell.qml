// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: container
    property alias cellColor: rectangle.color
    signal cliked(color cellColor)
    width: 40; height: 50

    Rectangle {
        id: rectangle
        border.color: "white"
        anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: cliked(container.cellColor)
    }
}





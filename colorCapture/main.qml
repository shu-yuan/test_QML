// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: page
    width: 500; height: 300
    color: "lightgray"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Text {
        id: helloText
        text: "hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true

        states: State {
            name: "down"; when: mouseArea.pressed == true
            PropertyChanges {
                target: helloText
                y: 160
                rotation: 180 * 2
                color: "red"
            }
        }

        transitions: Transition {
            from: ""
            to: "down"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y,rotation"
                    duration: 500
                    easing.type: Easing.InOutQuad
                }
                ColorAnimation {duration: 500 }
            }
        }
    }

    Grid {
        id: colorPicker
        x: 4
        anchors.bottom: page.bottom
        anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: 3

        Cell{
            cellColor: "red"; onCliked: helloText.color = cellColor
        }
        Cell{
            cellColor: "green"; onCliked: helloText.color = cellColor
        }
        Cell{
            cellColor: "blue"; onCliked: helloText.color = cellColor
        }
        Cell{
            cellColor: "yellow"; onCliked: helloText.color = cellColor
        }
        Cell{
            cellColor: "steelblue"; onCliked: helloText.color = cellColor
        }
        Cell{
            cellColor: "black"; onCliked: helloText.color = cellColor
        }
    }
}

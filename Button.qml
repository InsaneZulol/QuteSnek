import QtQuick 2.3

Rectangle {
	// button attributes
    id: button
    color: buttonColor
    width: 150; height: 75
	radius: 7
    smooth: true
	border { width: 4; color: borderColor }
	//
	// text atributes
    property string label
	property real labelSize: 14
	// appearance attributes
    property color textColor: buttonLabel.color
	property color buttonColor: "lightblue"
    property color onHoverColor: "lightsteelblue"
    property color borderColor: "white"

    Text{
        id: buttonLabel
        anchors.centerIn: parent
        text: label
		font.pointSize: labelSize
    }



    signal buttonClick()
    onButtonClick: {
        console.log(buttonLabel.text + " clicked" )
    }

    MouseArea{
		id: buttonMouseArea
        anchors.fill: parent
        onClicked: buttonClick()
        hoverEnabled: true
        onEntered: parent.border.color = onHoverColor
        onExited:  parent.border.color = borderColor
    }

	scale: buttonMouseArea.pressed ? 1.1 : 1.00
    //Animate the scale property change
    Behavior on scale { NumberAnimation{ duration: 55 } }
}

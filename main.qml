import QtQuick 2.3
import QtQuick.Window 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QuteSnek 0.01")
	Loader { id: pageLoader }
	// Menu
	Column {
		id: menu
		anchors.centerIn: parent
		spacing: parent.width/120
		Button {
				id: startButton
				buttonColor: "lightgrey"
				label: "Find match"
				labelSize: 20
				onButtonClick: {
					menu.visible = false;
					pageLoader.source = "Game.qml"
				}
		}
		Button {
				id: quitButton
				buttonColor: "darkred"
				label: "Quit"
				onButtonClick: Qt.quit()
		}
	}
}
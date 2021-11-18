import QtQuick 2.12
import QtQuick.Controls 2.0

Button {
    id: btn
    property var backColor: "#7BCBEB"
    property var iconUrl: ""
    property var textSize: 12
    property var openUrl: ""

    text: "button"
    implicitWidth: 60
    implicitHeight: 60
    hoverEnabled: true
    contentItem: Label {
        id: btnForeground
        text: parent.text
        font.family: "Microsoft Yahei"
        font.pixelSize: textSize
        color: "#FFFFFF"
        wrapMode: Text.WordWrap
        horizontalAlignment: Text.ElideMiddle
        verticalAlignment: Text.AlignBottom
    }
    background: Rectangle {
        id: btnBack
        color: backColor
        border.color: backColor
        border.width: 2

    }

    Image{
        source: iconUrl
        anchors.right: parent.right
        anchors.top: parent.top
        smooth: true
        anchors.rightMargin: parent.width * 0.01
        anchors.topMargin: parent.height * 0.03
        fillMode: Image.PreserveAspectFit
        height: parent.height * 0.4
        width: parent.width * 0.8
        mipmap: true
    }

    onDownChanged: {
        btnBack.color = down ? Qt.lighter(backColor, 0.9) : backColor
        btnBack.border.color = backColor
    }
    onHoveredChanged: {
        btnBack.color = hovered ? Qt.lighter(backColor, 1.09) : backColor
        btnBack.border.color = hovered ? Qt.lighter(backColor, 1.24) : backColor

    }

    onClicked: {
        if (openUrl.length > 0) {
            Qt.openUrlExternally(openUrl);
        }

    }
}

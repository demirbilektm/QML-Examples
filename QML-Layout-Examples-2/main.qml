import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQml 2.12

Window {
    width: 320;
    height: 240;
    visible: true;

    GridLayout{
          id: grid
          columns: 5
          anchors.fill: parent

          Repeater {
            model: 4
            Rectangle {
                color: "#C34A36"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

          }
          Rectangle {
              color: "#FF8066"
              Layout.fillWidth: true
              Layout.fillHeight: true
              Layout.columnSpan: 4
              //Layout.rowSpan: 2
          }
    }
}

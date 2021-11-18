import QtQuick 2.12
import QtQuick.Window 2.12

import QtQuick.Window 2.0
import QtQuick.Layouts 1.12
import QtQml 2.12
Window {
    width: 550;
    height: 400;
    visible: true;
    color: "#506168"

    property var btnTextSize: Math.min(grid.height,grid.width) * 0.04

    function boxButtonInit(item,color,text,icon,url) {
        item.Layout.fillWidth = true
        item.Layout.fillHeight = true
        item.backColor = color
        item.text = text
        item.iconUrl = icon
        item.openUrl = url

    }

    GridLayout{
          id: grid
          columns: 4
          anchors.fill: parent
          anchors.margins: 15
          rowSpacing: 8
          columnSpacing: 8
          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#297FEC",
                                                   "No Poverty",
                                                   "qrc:/Logos/poverty.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-1-no-poverty.html");
          }
          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#5B39B4",
                                                   "Zero Hunger",
                                                   "qrc:/Logos/hunger.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-2-zero-hunger.html");
          }
          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#00991A",
                                                   "Quality Education",
                                                   "qrc:/Logos/education.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-4-quality-education.html");
          }
          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#C4204C",
                                                   "Life Below Water",
                                                   "qrc:/Logos/water-waves.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-14-life-below-water.html");
          }
          CustomButton {
             // Layout.columnSpan: 2
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#D74E2C",
                                                   "Responsible Consumption and Production",
                                                   "qrc:/Logos/recycle-sign.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-12-responsible-consumption-and-production.html");

          }
          CustomButton {
//              Layout.columnSpan: 2
//              Layout.rowSpan: 2
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#297FEC",
                                                   "Gender Equality",
                                                   "qrc:/Logos/gender-equality.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-5-gender-equality.html");
          }

          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#4CC8EF",
                                                   "Affordable and Clean Energy",
                                                   "qrc:/Logos/renewable-energy.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-7-affordable-and-clean-energy.html");
          }
          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#2B965E",
                                                   "Clean Water and Sanitation",
                                                   "qrc:/Logos/save-water.svg",
                                                   "https://www.jd.com/");
          }
    }

}

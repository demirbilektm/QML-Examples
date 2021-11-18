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
                                                   "#f3722c",
                                                   "No Poverty",
                                                   "qrc:/Logos/poverty.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-1-no-poverty.html");
          }
          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#43aa8b",
                                                   "Zero Hunger",
                                                   "qrc:/Logos/hunger.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-2-zero-hunger.html");
          }
          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#f94144",
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
                                                   "#f9c74f,
                                                   "Responsible Consumption and Production",
                                                   "qrc:/Logos/recycle-sign.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-12-responsible-consumption-and-production.html");

          }
          CustomButton {
//              Layout.columnSpan: 2
//              Layout.rowSpan: 2
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#8338ec",
                                                   "Gender Equality",
                                                   "qrc:/Logos/gender-equality.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-5-gender-equality.html");
          }

          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#90be6d",
                                                   "Affordable and Clean Energy",
                                                   "qrc:/Logos/renewable-energy.svg",
                                                   "https://www.tr.undp.org/content/turkey/en/home/sustainable-development-goals/goal-7-affordable-and-clean-energy.html");
          }
          CustomButton {
              textSize : btnTextSize
              Component.onCompleted: boxButtonInit(this,
                                                   "#577590",
                                                   "Clean Water and Sanitation",
                                                   "qrc:/Logos/save-water.svg",
                                                   "https://www.jd.com/");
          }
    }

}

/* GCompris - TutorialBar.qml
 *
 * SPDX-FileCopyrightText: 2021 Mariam Fahmy <mariamfahmy66@gmail.com>
 *
 * Authors:
 *   Mariam Fahmy <mariamfahmy66@gmail.com>
 *
 *   SPDX-License-Identifier: GPL-3.0-or-later
 */
import QtQuick 2.9
import GCompris 1.0

import "../../../core"
import "../"

Item {
    id: tutorialBar
    width: background.horizontalLayout ? tutorialBar.cellSize * 10 : tutorialBar.cellSize
    height: background.horizontalLayout ? tutorialBar.cellSize : tutorialBar.cellSize * 10
    property int cellSize: 10

    property alias model: rowRepeater.model

    Grid {
        id: singleBarTuto
        anchors.fill: parent

        states: [
            State {
                when: background.horizontalLayout
                PropertyChanges {
                    target: singleBarTuto
                    rows: 1
                    columns: 0
                }
            },
            State {
                when: !background.horizontalLayout
                PropertyChanges {
                    target: singleBarTuto
                    rows: 0
                    columns: 1
                }
            }
        ]

        Repeater {
            id: rowRepeater

            Image {
                source: "qrc:/gcompris/src/activities/learn_decimals/resource/rectDark.svg"
                width: tutorialBar.cellSize
                height: width
                sourceSize.width: width
                visible: modelData != "none"

                Image {
                    id: whiteSquare
                    source: "qrc:/gcompris/src/activities/learn_decimals/resource/rectWhite.svg"
                    width: parent.width - 4
                    height: width
                    sourceSize.width: width
                    anchors.centerIn: parent
                }
                Image {
                    source: "qrc:/gcompris/src/activities/learn_decimals/resource/cross.svg"
                    width: whiteSquare.width
                    height: width
                    sourceSize.width: width
                    anchors.centerIn: parent
                    visible: modelData === "deleted"
                }
                Image {
                    source: "qrc:/gcompris/src/activities/learn_decimals/resource/rectFill.svg"
                    width: whiteSquare.width
                    height: width
                    sourceSize.width: width
                    anchors.centerIn: parent
                    visible: modelData === "fill"
                }
            }
        }
    }
}

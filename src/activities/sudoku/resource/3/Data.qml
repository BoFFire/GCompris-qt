/* GCompris - Data.qml
 *
 * Copyright (C) 2020 Shubham Mishra <shivam828787@gmail.com>
 *
 * Authors:
 *   Shubham Mishra <shivam828787@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 */
import GCompris 1.0

Data {
    objective: qsTr("Medium grids using numbers and symbols.")
    difficulty: 5

    property var symbols: [
        {"imgName": "circle.svg", "text": 'A'},
        {"imgName": "rectangle.svg", "text": 'B'},
        {"imgName": "rhombus.svg", "text": 'C'},
        {"imgName": "star.svg", "text": 'D'},
        {"imgName": "triangle.svg", "text": 'E'},
        {"imgName": "1.svg", "text": '1'},
        {"imgName": "2.svg", "text": '2'},
        {"imgName": "3.svg", "text": '3'},
        {"imgName": "4.svg", "text": '4'},
        {"imgName": "5.svg", "text": '5'}
    ]

    data: [
        {
            "symbols": symbols,
            "data": [
                [
                    ['A','B','C','D','E'],
                    ['.','A','B','C','D'],
                    ['.','.','A','B','C'],
                    ['.','.','.','A','B'],
                    ['.','.','.','.','A']
                ],
                [
                    ['A','B','.','D','.'],
                    ['.','.','D','E','A'],
                    ['C','.','.','A','.'],
                    ['D','E','.','.','C'],
                    ['.','A','B','.','D']
                ],
                [
                    ['.','C','.','A','.'],
                    ['A','.','B','.','C'],
                    ['.','B','.','C','.'],
                    ['D','.','C','.','A'],
                    ['.','A','E','.','B']
                ],
                [
                    ['C','B','.','.','D'],
                    ['.','.','D','C','.'],
                    ['D','.','B','.','E'],
                    ['.','A','.','D','C'],
                    ['E','.','.','B','.']
                ],
                [
                    ['D','.','.','B','E'],
                    ['.','E','A','.','.'],
                    ['A','C','.','.','B'],
                    ['.','.','B','C','.'],
                    ['C','B','.','A','.']
                ],
                [
                    ['.','.','C','D','.'],
                    ['B','.','.','.','C'],
                    ['.','C','.','B','D'],
                    ['C','.','D','A','.'],
                    ['D','E','.','.','A']
                ]
            ]
        },
        {
            "symbols": symbols,
            "data": [
                [
                    ['1','2','3','4','5'],
                    ['.','1','2','3','4'],
                    ['.','.','1','2','3'],
                    ['.','.','.','1','2'],
                    ['.','.','.','.','1']
                ],
                [
                    ['1','2','.','4','.'],
                    ['.','.','4','5','1'],
                    ['3','.','.','1','.'],
                    ['4','5','.','.','3'],
                    ['.','1','2','.','4']
                ],
                [
                    ['.','3','.','1','.'],
                    ['1','.','2','.','3'],
                    ['.','2','.','3','.'],
                    ['4','.','3','.','1'],
                    ['.','1','5','.','2']
                ],
                [
                    ['3','2','.','.','4'],
                    ['.','.','4','3','.'],
                    ['4','.','2','.','5'],
                    ['.','1','.','4','3'],
                    ['5','.','.','2','.']
                ],
                [
                    ['4','.','.','2','5'],
                    ['.','5','1','.','.'],
                    ['1','3','.','.','2'],
                    ['.','.','2','3','.'],
                    ['3','2','.','1','.']
                ],
                [
                    ['.','.','3','4','.'],
                    ['2','.','.','.','3'],
                    ['.','3','.','2','4'],
                    ['3','.','4','1','.'],
                    ['4','5','.','.','1']
                ]
            ]
        }
    ]
}

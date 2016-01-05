//
//  CustomView.swift
//  Example
//
//  Created by Yuri Strot on 12/19/15.
//  Copyright © 2015 Exyte. All rights reserved.
//

import Foundation
import UIKit
import Macaw

class CustomView: MacawView {

    required init?(coder aDecoder: NSCoder) {
        let rect = Rect(x: 50, y: 50, w: 50, h: 100)
        let shape1 = Shape(form: rect, fill: Color.blue)

        let round = RoundRect(rect: Rect(x: 150, y: 50, w: 50, h: 100), rx: 10, ry: 10)
        let shape2 = Shape(form: round, fill: Color.navy)

        let circle = Circle(cx: 50, cy: 200, r: 30)
        let shape3 = Shape(form: circle, fill: Color.purple)

        let ellipse = Ellipse(cx: 150, cy: 200, rx: 50, ry: 30)
        let shape4 = Shape(form: ellipse, fill: Color.fuchsia)

        let polygon = Polygon(points: [280, 60, 240, 95, 330, 150, 330, 100])
        let shape5 = Shape(form: polygon, fill: Color.maroon)
    
        let polyline = Polyline(points: [260, 150, 220, 185, 310, 240, 310, 190])
        let shape6 = Shape(form: polyline, stroke: Stroke(fill: Color.olive, width: 5, join: LineJoin.round))

        let line = Line(x1: 30, y1: 290, x2: 130, y2: 290)
        let shape7 = Shape(form: line, stroke: Stroke(fill: Color.lime, width: 10, cap: LineCap.round))

        let arc = Arc(ellipse: Ellipse(cx: 250, cy: 250, rx: 50, ry: 50), shift: M_PI / 2, extent: M_PI / 2)
        let shape8 = Shape(form: arc, stroke: Stroke(fill: Color.green, dashes: [3, 3]))

        let point = Point(x: 300, y: 290)
        let shape9 = Shape(form: point, stroke: Stroke(fill: Color.gray, width: 7, cap: LineCap.round))

        let group = Group(contents: [shape1, shape2, shape3, shape4, shape5, shape6, shape7, shape9, shape8])

        super.init(node: group, coder: aDecoder)
    }

    required init?(node: Node, coder aDecoder: NSCoder) {
        super.init(node: node, coder: aDecoder)
    }

}
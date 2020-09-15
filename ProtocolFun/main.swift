//
//  main.swift
//  ProtocolFun
//
//  Created by Gina Sprint on 9/15/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")


Point.pointTester()
Circle.circleTester()

func shapeTester() {
    // task: declare some Circles and some Rectangles
    // then add them to a Shape array
    // polymorphism - same code, different behavior
    // depending on the actual type of our shape objects
    // at run time, we will different output, though our code is the same
    // iterate through each shape and print out its area and perimeter
    
    var circle1 = Circle()
    var circle2 = Circle(center: Point(x: 1.0, y: 2.0), radius: 10.0)
    var rectangle1 = Rectangle()
    var rectangle2 = Rectangle(length: 5.0, width: 10.0)
    var shapes = [Shape]()
    
    shapes.append(circle1)
    shapes.append(circle2)
    shapes.append(rectangle1)
    shapes.append(rectangle2)
    print(shapes)
    
    for shape in shapes {
        print(shape, shape.computeArea(), shape.computePerimeter())
    }
}

shapeTester()

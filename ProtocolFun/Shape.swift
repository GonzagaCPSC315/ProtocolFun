//
//  Shape.swift
//  ProtocolFun
//
//  Created by Gina Sprint on 9/15/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

// a protocol is a set of rules or procedures that define how things are done
// protocols specify required properties/methods any type that conforms to the
// protocol must have
// reasons to use protocols
// - enables polymorphic behavior
// - for use with APIs

protocol Shape {
    // all Shapes should have a computeArea() and a computePerimeter()
    func computeArea() -> Double
    func computePerimeter() -> Double
}

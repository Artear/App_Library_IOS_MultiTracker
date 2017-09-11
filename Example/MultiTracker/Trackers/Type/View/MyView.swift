//
//  MyView.swift
//  MultiTracker
//
//  Created by Jose Luis Sagredo on 11/9/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import MultiTracker

class MyView: TrackerView {
    var name:String
    init(name:String) {
        self.name = name
    }
}

extension MyView: CustomStringConvertible {
    var description: String {
        return "<\(type(of: self)) name=\"\(self.name)\">"
    }
}

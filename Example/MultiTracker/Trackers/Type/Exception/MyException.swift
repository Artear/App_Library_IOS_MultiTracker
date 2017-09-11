//
//  MyException.swift
//  MultiTracker
//
//  Created by Jose Luis Sagredo on 11/9/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import MultiTracker

class MyException: TrackerException {
    
    enum ErrorCode:Error {
        case invalidCharacter
        case internalError
    }
    
    var code:ErrorCode
    var messenger:String
    init(code:ErrorCode, messenger:String) {
        self.code = code
        self.messenger = messenger
    }
}

extension MyException: CustomStringConvertible {
    var description: String {
        return "<\(type(of: self)) code=\"\(self.code)\" messenger=\"\(self.messenger)\">"
    }
}

//
//  LogAnalytics.swift
//  MultiTracker
//
//  Created by Jose Luis Sagredo on 11/9/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import MultiTracker

class LogAnalytics: TrackerProtocol {
    required init(context: Any) {
        
    }
    
    func send(params:TrackerSend) {
         print("🛃 [LogAnalytics]: \(params)")
    }
    
    func onResume() {
        
    }
    
    func onPause() {
        
    }
    
    func onDestroy() {
        
    }
}

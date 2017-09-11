//
//  MultiTrackerProtocol.swift
//  Pods
//
//  Created by Jose Luis Sagredo on 24/7/17.
//
//

import UIKit

public protocol TrackerProtocol {
    init(context:Any)
    func send(params:TrackerSend)
    func onResume()
    func onPause()
    func onDestroy()
}

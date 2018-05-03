//
//  MultiTracker.swift
//  Pods
//
//  Created by Jose Luis Sagredo on 24/7/17.
//
//

import UIKit

public class MultiTracker {
    public static let shared = MultiTracker()
    private var trackers = [String:TrackerProtocol]()
    private init() {}
    
    public func register(_ tracker:TrackerProtocol) {
        let protocolType = type(of: tracker)
        if self.trackers["\(protocolType)"] != nil {
            self.log("Tracker currently exists: \(protocolType)")
            return
        }
        self.trackers["\(protocolType)"] = tracker
    }
    
    public func register(_ trackers:[TrackerProtocol]) {
        for tracker in trackers {
            self.register(tracker)
        }
    }
    
    public func send(params:TrackerSend, trackers:[TrackerProtocol.Type]? = nil) {
        var trackerTypes = [TrackerProtocol.Type]()
        if trackers == nil {
            for tracker in self.trackers {
                trackerTypes.append(type(of: tracker.value))
            }
        } else {
            for tracker in trackers! {
                trackerTypes.append(tracker)
            }
        }
        
        for trackerType in trackerTypes {
            if self.trackers["\(trackerType)"] == nil {
                self.log("Tracker Protocol Unknown: \(trackerType)")
            } else {
                self.trackers["\(trackerType)"]?.send(params: params)
            }
        }

    }

    public func onPause() {
        for metric in self.trackers {
            self.trackers[metric.key]?.onPause()
        }
    }
    
    public func onResume() {
        for metric in self.trackers {
            self.trackers[metric.key]?.onResume()
        }
    }
    
    public func onDestroy() {
        for metric in self.trackers {
            self.trackers[metric.key]?.onDestroy()
        }
        self.trackers.removeAll()
    }
    
    private func log(_ data:Any){
        print("[MultiTracker] \(data)")
    }
    
}

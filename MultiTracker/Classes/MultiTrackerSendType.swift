//
//  MultiTrackerSendType.swift
//  Pods
//
//  Created by Jose Luis Sagredo on 24/7/17.
//
//

import UIKit

public protocol TrackerSend {}
public protocol TrackerView: TrackerSend {}
public protocol TrackerEvent: TrackerSend {}
public protocol TrackerException: TrackerSend {}

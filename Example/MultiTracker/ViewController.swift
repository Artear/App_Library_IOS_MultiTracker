//
//  ViewController.swift
//  MultiTracker
//
//  Created by jsagredo.ing@gmail.com on 09/11/2017.
//  Copyright (c) 2017 jsagredo.ing@gmail.com. All rights reserved.
//

import UIKit
import MultiTracker

class ViewController: UIViewController {

    let TestView = MyView(name: "Main View")
    let TestEventOne = MyEvent(name: "Event One")
    let TestEventTwo = MyEvent(name: "Event Two")
    let TestException = MyException(code: .internalError, messenger: "Error :(")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendView(_ sender: Any) {
        MultiTracker.shared.send(params: TestView, trackers: [LogAnalytics.self])
    }

    @IBAction func sendEvent(_ sender: Any) {
        MultiTracker.shared.send(params: TestEventOne, trackers: [LogAnalytics.self])
        MultiTracker.shared.send(params: TestEventTwo, trackers: [LogTwoAnalytics.self])
    }

    @IBAction func sendException(_ sender: Any) {
        MultiTracker.shared.send(params: TestException)
    }
}


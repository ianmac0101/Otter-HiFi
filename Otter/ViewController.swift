//
//  ViewController.swift
//  Otter
//
//  Created by Ian Macato on 11/17/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
import UserNotifications

var goal_created = false
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound], completionHandler:{didAllow, error in})
        if goal_created {
            let content = UNMutableNotificationContent()
            content.title = "Did you have a chance to walk today?"
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            let request = UNNotificationRequest(identifier: "timerDone", content: content,trigger:trigger)
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


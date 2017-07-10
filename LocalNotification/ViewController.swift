//
//  ViewController.swift
//  LocalNotification
//
//  Created by Dang Quoc Huy on 7/10/17.
//  Copyright © 2017 Dang Quoc Huy. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func tapSendNotification(_ sender: Any) {
    // notification content
    let content = UNMutableNotificationContent()
    content.title = "Huy said:"
    content.body = "This is a notification!"
    content.sound = UNNotificationSound.default()
    content.badge = NSNumber(value: UIApplication.shared.applicationIconBadgeNumber + 1)
    content.categoryIdentifier = "huy.dang.quoc.localnotification"
    // deliver in 10 seconds
    let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 10, repeats: false)
    let request = UNNotificationRequest.init(identifier: "10seconds", content: content, trigger: trigger)
    // Schedule the notification.
    let center = UNUserNotificationCenter.current()
    center.add(request)
  }

}

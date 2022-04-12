//
//  LocalNotificationManager.swift
//  WasteTimeRecord
//
//  Created by DaeSeong on 2022/04/01.
//

import Foundation
import UserNotifications
import SwiftUI

struct Notification {
    var id : String
    var title : String
}

class LocalNotificationManager {
   
    var notifications = [Notification]()
    
    func requestPermission() -> Void {
        UNUserNotificationCenter
            .current()
            .requestAuthorization(options: [.alert , .badge , .alert]) { granted, error in
                if granted == true && error == nil {
                    
                }
            }
    }
    
    func addNotification(title: String) -> Void {
        notifications.append(Notification(id: UUID().uuidString, title: title))
    }
    
    func schedule() -> Void {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            switch settings.authorizationStatus {
            case .notDetermined :
                self.requestPermission()
            case .authorized, .provisional :
                self.scheduleNotifications()
           // case .denied :
          //      showAlert = true
            default :
                break
            }
        }
    }
    
    func scheduleNotifications() -> Void {
       
        for notification in notifications {
            let content = UNMutableNotificationContent()
            content.title = notification.title
            
            content.sound = UNNotificationSound.default
            content.subtitle = "This is Subtitle : UserNotifications tutorial"
            content.body = "This is Body : 블로그 글 쓰기"
            content.badge = 1 
//            content.summaryArgument = "Alan Walker"
//            content.summaryArgumentCount = 40
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
            let request = UNNotificationRequest(identifier: notification.id, content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(request) { error in
                guard error == nil else { return}
                print("Scheduling notification with id : \(notification.id)")
            }
        }
    }
}

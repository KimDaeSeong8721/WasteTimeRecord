//
//  AppDelegate.swift
//  WasteTimeRecord
//
//  Created by DaeSeong on 2022/04/02.
//

import Foundation
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
   
    // 이거 뺴먹어서 안됐음.
    func userNotificationCenter(
            _ center: UNUserNotificationCenter,
            willPresent notification: UNNotification,
            withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions)
            -> Void) {
            completionHandler([.alert, .badge, .sound])
        }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("hk")
        UNUserNotificationCenter.current().delegate = self
        return true }
    
    
    func applicationWillEnterForeground(_ application: UIApplication) {
            print("kjkjk")
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    
    
}

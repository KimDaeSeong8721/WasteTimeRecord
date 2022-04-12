//
//  WasteTimeRecordApp.swift
//  WasteTimeRecord
//
//  Created by DaeSeong on 2022/04/01.
//

import SwiftUI


 

@main
struct WasteTimeRecordApp: App {
   
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate


    var body: some Scene {
        WindowGroup {
            Tab()
        }
    }
}

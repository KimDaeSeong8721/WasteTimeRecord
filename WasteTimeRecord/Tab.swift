//
//  Tab.swift
//  WasteTimeRecord
//
//  Created by DaeSeong on 2022/04/02.
//

import SwiftUI

struct Tab: View {
    @State private var selectedIndex = 0
    @Environment(\.scenePhase) var scenePhase
    var body: some View {
            TabView(selection: $selectedIndex) {
                ContentView()
                    .tabItem {
                        Label("Star",systemImage: "star")
                    }.tag(0)
        
                CalenderView()
                    .tabItem {
                        Label("Calendar",systemImage: "calendar")
                    }.tag(0)
                
            }.onChange(of: scenePhase) { newPhase in
                if newPhase == .active {
                    UIApplication.shared.applicationIconBadgeNumber = 0                } else if newPhase == .inactive {
                    print("Inactive")
                } else if newPhase == .background {
                    print("Background")
                }
            }
           
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}

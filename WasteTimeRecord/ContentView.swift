//
//  ContentView.swift
//  WasteTimeRecord
//
//  Created by DaeSeong on 2022/04/01.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert = false
    func setNotification() -> Void {
        let manager = LocalNotificationManager()
        manager.requestPermission()
        manager.addNotification(title: "Thiis is a test reminder")
        manager.schedule()
    }
    
    var body: some View {
        VStack {
            Text("Notification Demo")
            Button {
                self.setNotification()
            } label: {
                Text("SetNotification!")
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("경고"), message: Text("알림을 허용해주세요"), dismissButton: .default(Text("확인")))

            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

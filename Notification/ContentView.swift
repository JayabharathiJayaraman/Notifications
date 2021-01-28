//
//  ContentView.swift
//  Notification
//
//  Created by Jayabharathi Jayaraman on 2021-01-24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    
        var notificationManager = LocalNotificationManager()
        @State var showFootnote = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                Button(action: {
                    withAnimation{
                        self.showFootnote.toggle()
                        self.notificationManager.sendNotification(title: "HI", subtitle: nil, body: "Hello", launchIn: 5)
                    }
                    
                }) {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                }
                if  showFootnote{
                    Text("5sec")
                }
                
            }
            .navigationBarTitle("Local", displayMode: .inline)
        }
    }
}

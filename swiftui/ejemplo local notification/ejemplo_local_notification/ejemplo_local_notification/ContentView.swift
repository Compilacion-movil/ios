//
//  ContentView.swift
//  ejemplo_local_notification
//
//  Created by Antonio Carabantes on 24/08/2020.
//  Copyright © 2020 compilacionmovil.com. All rights reserved.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Solicitar Permisos") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
                    if granted {
                        print("Permiso concedido")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }.padding(30)

            
            Button("Lanzar Notificación") {
                
                let content = UNMutableNotificationContent()
                content.title = "Este es el título de la notificación"
                content.subtitle = "un Subtítulo"
                content.body = "El cuerpo de la notificación"
                content.sound = UNNotificationSound.default
                
                let imageName = "apple_logo"
                guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }

                let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
                content.attachments = [attachment]

                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)

               
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

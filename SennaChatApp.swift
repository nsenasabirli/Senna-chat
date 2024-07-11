//
//  SennaChatApp.swift
//  SennaChat
//
//  Created by N Sena Sabırlı on 10.07.2024.
//

import SwiftUI
import Firebase

@main
struct SennaChatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
            WindowGroup {
                ContentView()
            }
        }
    }

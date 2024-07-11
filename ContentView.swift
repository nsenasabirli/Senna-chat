//
//  ContentView.swift
//  SennaChat
//
//  Created by N Sena Sabırlı on 10.07.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                    ScrollViewReader { proxy in
                        ScrollView {
                            ForEach(messagesManager.messages, id: \.id) { message in
                                MessageBubble(message: message)
                            }
                        }
                        .padding(.top, 10)
                        .background(.white)
                        .cornerRadius(30, corners: [.topLeft, .topRight]) // Custom cornerRadius modifier added in Extensions file
                        .onChange(of: messagesManager.lastMessageId) {
                            // When the lastMessageId changes, scroll to the bottom of the conversation
                            withAnimation {
                                proxy.scrollTo(messagesManager.lastMessageId, anchor: .bottom)
                            }
                    }
                    }
                }
            }
            .background(Color("Peach1"))
            
            MessageField()
                .environmentObject(messagesManager)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


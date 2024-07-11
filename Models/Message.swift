//
//  Message.swift
//  SennaChat
//
//  Created by N Sena Sabırlı on 11.07.2024.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}

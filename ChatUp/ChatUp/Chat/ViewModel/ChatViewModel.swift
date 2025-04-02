//
//  ChatViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 02/04/25.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var messages: [Message] = [
        Message(uuid: UUID().uuidString, text: "some message", isMe: false),
        Message(uuid: UUID().uuidString, text: "some message", isMe: false),
        Message(uuid: UUID().uuidString, text: "sad some assasa asasas dddssss asasasa dddddd asasasa message", isMe: true),
        Message(uuid: UUID().uuidString, text: "some message", isMe: false),
        Message(uuid: UUID().uuidString, text: "some sad message", isMe: true),
        Message(uuid: UUID().uuidString, text: "some message -1 1", isMe: true),
        Message(uuid: UUID().uuidString, text: "some message sad 1", isMe: true),
        Message(uuid: UUID().uuidString, text: "some message", isMe: false),
        Message(uuid: UUID().uuidString, text: "some message 22", isMe: false),
    ]
    
    @Published var text = ""
}

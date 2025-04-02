//
//  Message.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 02/04/25.
//

import Foundation

struct Message: Hashable {
    let uuid: String
    let text: String
    let isMe: Bool
}

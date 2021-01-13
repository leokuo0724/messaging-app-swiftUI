//
//  Chat.swift
//  messaging-app-swiftUI
//
//  Created by 郭家銘 on 2021/1/13.
//

import Foundation
import SwiftUI

enum OnlineStatus {
    case Online, Offline, Idle, None
}

struct Chat: Hashable {
    var userName: String
    var status: OnlineStatus
    var unReadCount: Int
    var lastMessage: MessageInfo
    
    var avatarImageName: String
    
    public init(
        userName: String,
        status: OnlineStatus,
        unReadCount: Int,
        lastMessage: MessageInfo,
        avatarImageName: String
        ) {
        self.userName = userName
        self.status = status
        self.unReadCount = unReadCount
        self.lastMessage = lastMessage
        self.avatarImageName = avatarImageName
    }
    
    var avatarImage: Image {
        Image(avatarImageName)
    }
}

struct MessageInfo: Hashable {
    var content: String
    var timestamp: String
}

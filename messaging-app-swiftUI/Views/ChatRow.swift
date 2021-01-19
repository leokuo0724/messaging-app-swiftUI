//
//  ChatRow.swift
//  messaging-app-swiftUI
//
//  Created by 郭家銘 on 2021/1/12.
//

import SwiftUI

struct ChatRow: View {
    var chat: Chat
    var rowBackgroundColor: Color {
        if chat.unReadCount > 0 {
            return Color.init("PrimaryColor-0.1")
        } else {
            return Color.white
        }
    }
    
    var body: some View {
        HStack {
            ZStack {
                Image(chat.avatarImageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 48, height: 48, alignment: .center)
                OnlineView(onlineStatus: chat.status)
            }
            .padding(.all, 8)
            
            VStack {
                HStack {
                    Text(chat.userName)
                        .font(Font.custom("PlusJakartaSans-Medium", size: 14))
                        .foregroundColor(Color.init("DeepColor"))
                    Spacer()
                    Text(chat.lastMessage.timestamp)
                        .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundColor(Color.init("DeepColor"))
                }
                Spacer()
                HStack {
                    Text(chat.lastMessage.content)
                        .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundColor(Color.init("GrayColor"))
                        .frame(maxWidth: 212, alignment: .leading)
                    Spacer()
                    ZStack {
                        if chat.unReadCount > 0 {
                        Circle()
                            .fill(Color.init("PrimaryColor"))
                            .frame(width: 24, height: 24, alignment: .center)
                        Text("\(chat.unReadCount)")
                            .font(Font.custom("PlusJakartaSans-Bold", size: 12))
                            .foregroundColor(.white)
                        }
                    }
                }
                .frame(minHeight: 24)
            }
            .frame(minWidth: 0, idealWidth: 279, maxWidth: .infinity, minHeight: 0, idealHeight: 48, maxHeight: 48, alignment: .center)
            .padding(.trailing, 8)
        }
        .frame(minWidth: 0, idealWidth: 359, maxWidth: .infinity, minHeight: 0, idealHeight: 64, maxHeight: 64, alignment: .center)
        .background(rowBackgroundColor)
        .cornerRadius(8)
    }
}

// 狀態小圓
struct OnlineView: View {
    var onlineStatus: OnlineStatus
    var statusColor: Color? {
        switch onlineStatus {
        case .Idle:
            return Color.init("YellowColor")
        case .Offline:
            return Color.gray
        case .Online:
            return Color.green
        default:
            return Color.clear
        }
    }
        
    var body: some View {
        if onlineStatus != .None {
            Circle()
                .strokeBorder(Color.white, lineWidth: 2)
                .background(Circle().foregroundColor(statusColor))
                .frame(width: 12, height: 12, alignment: .center)
                .offset(CGSize(width: 18, height: 18))
        }        
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(chat: chats[0])
    }
}

//
//  ContentView.swift
//  messaging-app-swiftUI
//
//  Created by 郭家銘 on 2021/1/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Recent Chats").foregroundColor(Color.init("DeepColor")).font(Font.custom("PlusJakartaSans-Medium", size: 18))
                    Spacer()
                    Image("search")
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 16)
                    
                HStack {
                    Text("All chats")
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .background(Color("PrimaryColor"))
                        .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundColor(.white)
                        .cornerRadius(4)
                        .frame(maxWidth: .infinity)
                    Text("Personal")
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundColor(Color("GrayColor"))
                        .cornerRadius(4)
                        .background(Color.white.shadow(color: Color.init(.sRGB, red: 0.276, green: 0.377, blue: 0.529, opacity: 0.1), radius: 32, x: 0, y: -8))
                        .frame(maxWidth: .infinity)
                    Text("Work")
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundColor(Color("GrayColor"))
                        .cornerRadius(4)
                        .background(Color.white.shadow(color: Color.init(.sRGB, red: 0.276, green: 0.377, blue: 0.529, opacity: 0.1), radius: 32, x: 0, y: -8))
                        .frame(maxWidth: .infinity)
                    Text("Groups")
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundColor(Color("GrayColor"))
                        .cornerRadius(4)
                        .background(Color.white.shadow(color: Color.init(.sRGB, red: 0.276, green: 0.377, blue: 0.529, opacity: 0.1), radius: 32, x: 0, y: 4))
                        .frame(maxWidth: .infinity)
                    
                }
                .frame(width: 302, height: 26, alignment: .leading)
                .padding(.leading, 16)
                
                ChatList()
                
                Spacer()
            }
            // in zstack
            TabBarView()
                .position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height-86)
            Button (action: {
                print("click message")
            }) {
                Image("add")
                    .foregroundColor(.white)
                    .frame(width: 24, height: 24, alignment: .center)
            }
            .frame(width: 56, height: 56, alignment: .center)
            .background(Color("PrimaryColor").shadow(color: Color.init(.sRGB, red: 70/255, green: 96/255, blue: 135/255, opacity: 0.25), radius: 32, x: 0, y: 4))
            .cornerRadius(56/2)
            .offset(x: 80+56, y: 204+56)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

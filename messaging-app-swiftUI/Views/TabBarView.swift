//
//  TabBarView.swift
//  messaging-app-swiftUI
//
//  Created by 郭家銘 on 2021/1/11.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        
    }
    
    var body: some View {
        VStack {
            HStack {
                Image("message").frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity)
                Image("time").frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity)
                Image("call").frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity)
                Image("user").frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity)
            }
            .frame(maxHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 86, alignment: .center)
        .background(Color.white.shadow(color: Color.init(.sRGB, red: 0.276, green: 0.377, blue: 0.529, opacity: 0.1), radius: 32, x: 0, y: -8))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

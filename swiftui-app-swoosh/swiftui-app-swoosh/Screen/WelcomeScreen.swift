//
//  WelcomeScreen.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/19/21.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack {
            BackgroundImageView(imageName: "welcomeScreenBG")
            
            VStack {
                LogoImageView()
                
                Spacer(minLength: 0)
                
                VStack(alignment: .center, spacing: 15) {
                    VStack(alignment: .center) {
                        Text("GO ALL IN")
                            .font(.system(size: 52, weight: .medium))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        Text("ON GOING ALL OUT")
                            .font(.system(size: 26, weight: .heavy))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                    }
                    
                    Text("Find a team in your city & dominate the league")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    print("Get Started button pressed")
                }, label: {
                    BorderedButtonView(title: "GET STARTED")
                })
                .padding([.leading, .trailing], 40)
                .padding([.bottom, .top])
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}

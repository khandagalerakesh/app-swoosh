//
//  WelcomeScreen.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/19/21.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                CustomImageView(imageName: "swooshLogo",
                                aspectRatio: .fit,
                                width: 100,
                                height: 50,
                                alignment: .center)
                    .padding(.top, 44)
                
                VStack(alignment: .center, spacing: 8) {
                    
                    CustomTextView(value: "GO ALL IN", fontSize: 52, fontWeight: .semibold)
                    
                    CustomTextView(value: "ON GOING ALL OUT", fontSize: 26, fontWeight: .medium)
                    
                    CustomTextView(value: "Find a team in your city & dominate the league", fontSize: 16, fontWeight: .light)
                        .lineLimit(2)
                        .padding([.leading, .trailing], 35)
                        .padding()
                }
                .padding(.top, 60)
                
                Spacer(minLength: 0)
                
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        BorderedButtonView(value: "GET STARTED", fontSize: 24, fontWeight: .bold, width: 300)
                            .padding(.bottom, 20)
                            .padding()
                    })
            }
            .background(CustomImageView(imageName: "welcomeScreenBG",
                                        aspectRatio: .fill,
                                        width: UIScreen.main.bounds.width,
                                        height: UIScreen.main.bounds.height,
                                        alignment: .center))
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}

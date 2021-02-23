//
//  LeagueScreen.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/22/21.
//

import SwiftUI

struct LeagueScreen: View {
    var body: some View {
        VStack {
            
            HStack {
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        CustomImageView(imageName: "backButton",
                                        aspectRatio: .fit,
                                        width: 30, height: 30, alignment: .center)
                            .padding()
                            .padding(.trailing, 65)
                    })
                
                CustomImageView(imageName: "swooshLogo",
                                aspectRatio: .fit,
                                width: 100, height: 50, alignment: .center)
                
                Spacer(minLength: 0)
            }
            .padding(.top, 44)
            
            Spacer(minLength: 0)
            
            VStack(alignment: .center, spacing: 20) {
                
                Button(action: {
                    print("Mens button pressed")
                }, label: {
                    BorderedButtonView(value: "Mens", fontSize: 24, fontWeight: .bold, width: 300)
                })
                
                Button(action: {
                    print("Mens button pressed")
                }, label: {
                    BorderedButtonView(value: "Womens", fontSize: 24, fontWeight: .bold, width: 300)
                })
                
                Button(action: {
                    print("Mens button pressed")
                }, label: {
                    BorderedButtonView(value: "Co-ed", fontSize: 24, fontWeight: .bold, width: 300)
                })
            }
            
            Spacer(minLength: 0)
            
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    BorderedButtonView(value: "NEXT", fontSize: 24, fontWeight: .bold, width: 300)
                        .padding(.bottom, 20)
                })
        }
        .background(CustomImageView(imageName: "desiredLeagueBG",
                                    aspectRatio: .fill,
                                    width: UIScreen.main.bounds.width,
                                    height: UIScreen.main.bounds.height,
                                    alignment: .center))
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct LeagueScreen_Previews: PreviewProvider {
    static var previews: some View {
        LeagueScreen()
    }
}

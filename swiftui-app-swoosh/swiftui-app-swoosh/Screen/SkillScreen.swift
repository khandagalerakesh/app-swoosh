//
//  SkillScreen.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/22/21.
//

import SwiftUI

struct SkillScreen: View {
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
            
            HStack(spacing: 20) {
                
                Button(action: {
                    print("Beginner button pressed")
                }, label: {
                    BorderedButtonView(value: "Beginner", fontSize: 24, fontWeight: .bold, width: 160)
                })
                
                Button(action: {
                    print("Baller button pressed")
                }, label: {
                    BorderedButtonView(value: "Baller", fontSize: 24, fontWeight: .bold, width: 160)
                })
            }
            
            Spacer(minLength: 0)
            
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    BorderedButtonView(value: "FINISH", fontSize: 24, fontWeight: .bold, width: 300)
                        .padding(.bottom, 20)
                        .padding()
                })
        }
        .background(CustomImageView(imageName: "beginnerBallerBG",
                                    aspectRatio: .fill,
                                    width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center))
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}


struct SkillScreen_Previews: PreviewProvider {
    static var previews: some View {
        SkillScreen()
    }
}

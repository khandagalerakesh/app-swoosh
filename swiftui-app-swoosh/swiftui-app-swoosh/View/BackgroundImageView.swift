//
//  BackgroundImageView.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/22/21.
//

import SwiftUI

struct BackgroundImageView: View {
    
    // MARK:- Properties
    @State var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea(.all)
    }
}

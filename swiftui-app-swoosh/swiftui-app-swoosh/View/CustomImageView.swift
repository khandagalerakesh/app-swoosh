//
//  BackgroundImageView.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/22/21.
//

import SwiftUI

struct CustomImageView: View {
    
    // MARK:- Properties
    var imageName: String
    var aspectRatio: ContentMode
    var width: CGFloat
    var height: CGFloat
    var alignment: Alignment
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: aspectRatio)
            .frame(width: width, height: height, alignment: alignment)
    }
}

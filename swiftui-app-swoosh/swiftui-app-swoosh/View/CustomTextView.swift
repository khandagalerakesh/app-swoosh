//
//  LogoImageView.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/22/21.
//

import SwiftUI

struct CustomTextView: View {
    
    // MARK:- Properties
    var value: String
    var fontSize: CGFloat
    var fontWeight: Font.Weight
    
    var body: some View {
        Text(value)
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
    }
}

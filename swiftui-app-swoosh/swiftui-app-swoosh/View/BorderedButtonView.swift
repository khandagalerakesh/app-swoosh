//
//  BorderedButtonView.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/22/21.
//

import SwiftUI

struct BorderedButtonView: View {
    
    // MARK:- Properties
    var value: String
    var fontSize: CGFloat
    var fontWeight: Font.Weight
    var width: CGFloat
    
    var body: some View {
        Text(value)
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundColor(.white)
            .frame(width: width, height: 50)
            .background(Color.black.opacity(0.6))
            .border(Color.white, width: 1.2)
    }
}

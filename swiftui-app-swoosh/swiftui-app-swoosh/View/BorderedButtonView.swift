//
//  BorderedButtonView.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/22/21.
//

import SwiftUI

struct BorderedButtonView: View {
    
    // MARK:- Properties
    @State var title: String
    
    var body: some View {
        Rectangle()
            .frame(height: 50, alignment: .center)
            .foregroundColor(Color.black.opacity(0.8))
            .border(Color.white, width: 2.0)
            .overlay(
                Text(title)
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
            )
    }
}

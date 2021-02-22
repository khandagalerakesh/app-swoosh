//
//  LogoImageView.swift
//  swiftui-app-swoosh
//
//  Created by Rakesh Khandagale on 2/22/21.
//

import SwiftUI

struct LogoImageView: View {
    var body: some View {
        Image("swooshLogo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 40, alignment: .center)
            .padding()
    }
}

struct LogoImageView_Previews: PreviewProvider {
    static var previews: some View {
        LogoImageView()
    }
}

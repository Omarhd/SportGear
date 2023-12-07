//
//  FooterView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 06/12/2023.
//

import SwiftUI

struct FooterView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")

                .foregroundColor (.gray)
                .multilineTextAlignment(.center)
                .layoutPriority (2)
            
            Image("logo-lineal")
                .renderingMode(. template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright • Omar Abdulrahman\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor (.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        } //： VSTACK
        .padding ()
    }
}

#Preview {
    FooterView()
}

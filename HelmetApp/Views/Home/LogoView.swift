//
//  LogoView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 06/12/2023.
//

import SwiftUI

struct LogoView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY

    var body: some View {
        HStack(spacing: 4) {
            Text ("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor (.black)
            
            Image ("logo-dark" )
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: . center)
            
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
        } //: HSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    LogoView()
}

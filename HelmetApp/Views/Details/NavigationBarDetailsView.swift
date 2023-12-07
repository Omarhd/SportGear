//
//  NavigationBarDetailsView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 07/12/2023.
//

import SwiftUI

struct NavigationBarDetailsView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeOut) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image (systemName: "chevron.backward.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            Button(action: {}, label: {
                Image (systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        } // : VSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationBarDetailsView()
        .environmentObject(Shop())
}

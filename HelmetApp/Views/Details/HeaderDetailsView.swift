//
//  HeaderDetailsView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 07/12/2023.
//

import SwiftUI

struct HeaderDetailsView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } // : VSTACK
        .foregroundColor(.white)
    }
}

// MARK: - PREVIEW
#Preview {
    HeaderDetailsView()
        .environmentObject(Shop())
}

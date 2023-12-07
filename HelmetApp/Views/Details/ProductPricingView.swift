//
//  ProductPricingView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 07/12/2023.
//

import SwiftUI

struct ProductPricingView: View {
    
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } // : VSTACK
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // IMAGE
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(x: isAnimating ? 0 : +35)

        } // : HSTACK
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

// MARK: - PREVIEW
#Preview {
    ProductPricingView()
        .environmentObject(Shop())
}

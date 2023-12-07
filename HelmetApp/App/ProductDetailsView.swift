//
//  ProductDetailsView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 07/12/2023.
//

import SwiftUI

struct ProductDetailsView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailsView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .first?.windows.first?.safeAreaInsets.top)

            // HEADER
            HeaderDetailsView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            ProductPricingView()
                .padding(.horizontal)
                .zIndex(1)
        
        
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                // RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding()
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                }
                
                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding()
                
                // ADD TO CART
                AddToCartDetailView()
                    .padding()
               
                Spacer()
                
            } // : VSTACK
            .background(Color.white.clipShape(CustomShape()).padding(.top, -100))

        } // : VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background (
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
              green: shop.selectedProduct?.green ?? sampleProduct.green,
              blue: shop.selectedProduct?.blue ?? sampleProduct.blue
             ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - PREVIEW
#Preview {
    ProductDetailsView()
}

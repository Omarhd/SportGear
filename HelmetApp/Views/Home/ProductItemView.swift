//
//  ProductItemView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 07/12/2023.
//

import SwiftUI

struct ProductItemView: View {

    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            // IMAGE
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                
            } // : ZSTACK
            .background(Color(red: product.red, green: product.green,
                              blue: product.blue))
            .cornerRadius(12)

            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    ProductItemView(product: products[0])
}

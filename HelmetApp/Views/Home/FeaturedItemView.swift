//
//  FeaturedItemView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 06/12/2023.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - PROPERTIES
    let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}


// MARK: - PREVIEW

#Preview {
    FeaturedItemView(player: players[0])
}

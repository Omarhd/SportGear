//
//  FeaturedTabView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 06/12/2023.
//

import SwiftUI

struct FeaturedTabView: View {
    
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        TabView {
          ForEach(players) { player in
            FeaturedItemView(player: player)
              .padding(.top, 10)
              .padding(.horizontal, 15)
          }
        } //: TAB
        .frame(height: 240)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - PREVIEW
#Preview {
    FeaturedTabView()
}

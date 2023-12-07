//
//  SectionView.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 07/12/2023.
//

import SwiftUI

struct SectionView: View {
  // MARK: - PROPERTY
  
  @State var rotateClockwise: Bool
  
  // MARK: - BODY
  
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      
      Text("Categories".uppercased())
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
      
      Spacer()
    } //: VSTACK
    .background(colorGray.cornerRadius(12))
    .frame(width: 85)
  }
}

// MARK: - PREVIEW
#Preview {
    SectionView(rotateClockwise: false)
}

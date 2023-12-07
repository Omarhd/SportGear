//
//  Constants.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 06/12/2023.
//

import SwiftUI
import UIKit

// MARK: - DATA
let players: [Player] = Bundle.main.decode ("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

// MARK: - COLOR
let colorBackground: Color = Color("ColorBackground" )
let colorGray: Color = Color(UIColor.systemGray4)

// MARK: - LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// MARK: - UX
// MARK: - API
// MARK: - IMAGE
// MARK: - FONT
// MARK: - STRING
// MARK: - MISC

//
//  Shop.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 08/12/2023.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? //= nil
}

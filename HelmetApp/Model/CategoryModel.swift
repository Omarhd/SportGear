//
//  CategoryModel.swift
//  HelmetApp
//
//  Created by Omar Abdulrahman on 07/12/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

//
//  Constant.swift
//  Football
//
//  Created by Shubham Kumar on 04/12/22.
//

import SwiftUI

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

let players: [PlayerModel] = Bundle.main.decode("player.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")

let columnSpacing: CGFloat = 10
let rowSpacing:  CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

let products: [ProductModel] = Bundle.main.decode("product.json")
let brands: [BrandModel] = Bundle.main.decode("brand.json")
let sampleProduct: ProductModel = products[0]

let feedback = UIImpactFeedbackGenerator(style: .medium)

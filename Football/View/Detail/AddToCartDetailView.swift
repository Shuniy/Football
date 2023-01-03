//
//  AddToCartDetailView.swift
//  Football
//
//  Created by Shubham Kumar on 03/01/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    let product: ProductModel
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            HStack {
                Spacer()
                Text("Add To Cart".capitalized)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .padding(15)
        .background(
            Color(red: product.red, green: product.green, blue: product.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

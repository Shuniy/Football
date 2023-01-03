//
//  ProductItemView.swift
//  Football
//
//  Created by Shubham Kumar on 05/12/22.
//

import SwiftUI

struct ProductItemView: View {
    let product: ProductModel
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)

            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

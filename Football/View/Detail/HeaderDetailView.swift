//
//  HeaderDetailView.swift
//  Football
//
//  Created by Shubham Kumar on 03/01/23.
//

import SwiftUI

struct HeaderDetailView: View {
    let product: ProductModel
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Protective Gear")
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
        .padding(.top)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

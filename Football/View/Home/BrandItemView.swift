//
//  BrandItemView.swift
//  Football
//
//  Created by Shubham Kumar on 05/12/22.
//

import SwiftUI

struct BrandItemView: View {
    let brand: BrandModel
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(16))
            .background(RoundedRectangle(cornerRadius: 16).stroke(.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  ProductDetailView.swift
//  Football
//
//  Created by Shubham Kumar on 03/01/23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductModel
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.keyWindow?.safeAreaInsets.top)
            HeaderDetailView(product: product)
                .padding(.horizontal)
            TopPartDetailView(product: product)
                .padding(.horizontal)
                .zIndex(1)
            VStack(alignment: .center, spacing: 0) {
                RatingSizesDetailView()
                    .padding(.bottom)
                ScrollView(.vertical, showsIndicators: false) {
                    Text(product.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                AddToCartDetailView(product: product)
                    .padding(.bottom, UIApplication.shared.keyWindow?.safeAreaInsets.bottom)
                Spacer()
            }
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: product.red, green: product.green, blue: product.blue).ignoresSafeArea(.all, edges: .all))
        .navigationBarHidden(true)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
    }
}

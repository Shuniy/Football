//
//  FeaturedTabView.swift
//  Football
//
//  Created by Shubham Kumar on 04/12/22.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
            }
        }
        .frame(height: UIScreen.main.bounds.height / 3.5)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

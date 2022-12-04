//
//  FeaturedItemView.swift
//  Football
//
//  Created by Shubham Kumar on 04/12/22.
//

import SwiftUI

struct FeaturedItemView: View {
    let player: PlayerModel
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(16)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

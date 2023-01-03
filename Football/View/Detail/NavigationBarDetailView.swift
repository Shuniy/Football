//
//  NavigationBarDetailView.swift
//  Football
//
//  Created by Shubham Kumar on 03/01/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        HStack {
            Button {
                presentation.wrappedValue.dismiss()
                feedback.impactOccurred()
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  NavigationBarView.swift
//  Football
//
//  Created by Shubham Kumar on 04/12/22.
//

import SwiftUI

struct NavigationBarView: View {
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack {
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "magnifyingglass")
                    .scaledToFit()
                    .font(.title)
                    .foregroundColor(.black)
            }
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1: 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated = true
                    }
                }
            Spacer()
            Button {
                feedback.impactOccurred()
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .scaledToFit()
                        .font(.title)
                        .foregroundColor(.black)
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14)
                        .offset(x: 13, y: -10)
                }
            }

        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

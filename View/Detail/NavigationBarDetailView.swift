//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by 1 on 16/06/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK - PROPERTIES
    
    @EnvironmentObject var shop : Shop
    
    //MARK - BODY
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeOut) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}
    //MARK - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}

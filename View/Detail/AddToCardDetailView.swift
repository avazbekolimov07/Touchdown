//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by 1 on 16/06/21.
//

import SwiftUI

struct AddToCardDetailView: View {
    //MARK - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//: Button
        .padding(15)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProduct.red,
                green:shop.selectedProduct?.green ?? sampleProduct.green,
                blue:shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}
    //MARK - PREVIEW
struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

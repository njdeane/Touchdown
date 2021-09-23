//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Nic Deane on 23/9/21.
//

import SwiftUI

struct ProductDetailView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 5, content: {
      // NavBar
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
      
      // Header
      HeaderDetailView()
        .padding(.horizontal)
      
      // Detail Top part
      TopPartDetailView()
        .padding(.horizontal)
      
      // detail button part
      // Ratings + sizes
      // Description
      // Quantity + Favourite
      // Add to cart
      Spacer()
    })
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(
        red: sampleProduct.red,
        green: sampleProduct.green,
        blue: sampleProduct.blue)
    ).ignoresSafeArea(.all, edges: .all)
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .previewLayout(.fixed(width: 375, height: 812))
  }
}

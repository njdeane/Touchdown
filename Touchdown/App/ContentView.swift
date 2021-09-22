//
//  ContentView.swift
//  Touchdown
//
//  Created by Nic Deane on 22/9/21.
//

import SwiftUI

struct ContentView: View {
  
  
  
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        NavigationBarView()
          .padding(.horizontal)
          .padding(.bottom)
          .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          .background(Color.white)
          .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
        
        ScrollView(.vertical, showsIndicators: false, content: {
          VStack(spacing: 0) {
           FeaturedTabView()
            .padding(.vertical, 20)
            .frame(height: UIScreen.main.bounds.width / 1.475)
            
            CategoryGridView()
            
            TitleView(title: "Helmets")
            
            LazyVGrid(columns: gridLayout, spacing: 15, content: {
              ForEach(products) { product in
                ProductItemView(product: product)
              }
            })
            .padding(15)
            
            TitleView(title: "Brands")
            
            BrandGridView()
            
            FooterView()
              .padding(.horizontal)
          } //: Vstack
        }) //: ScrollView
        
      } //: Vstack
      .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    } //: Zstsack
    .ignoresSafeArea(.all, edges: .top)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


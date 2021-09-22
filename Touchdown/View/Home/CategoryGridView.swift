//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Nic Deane on 22/9/21.
//

import SwiftUI

struct CategoryGridView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false, content: {
      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
        Section(header: Text("HEADER"), footer: Text("FOOTER")) {
          ForEach(categories) { category in
            CategoryItemView(category: category)
          }
        }
      }) // Grid
      .frame(height: 140)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    }) // Scroll
  }
}

struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}

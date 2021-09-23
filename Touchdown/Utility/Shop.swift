//
//  Shop.swift
//  Touchdown
//
//  Created by Nic Deane on 24/9/21.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false // @Published will trigger a view reload anytime its property is changed
  @Published var selectedProduct: Product? = nil
}

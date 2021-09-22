//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Nic Deane on 22/9/21.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}

//
//  CategoryModel.swift
//  Touchdown
//
//  Created by 1 on 16/06/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id : Int
    let name : String
    let image : String
}

//
//  Shop.swift
//  Touchdown
//
//  Created by 1 on 16/06/21.
//

import Foundation

class Shop : ObservableObject{
    @Published var showingProduct : Bool = false
    @Published var selectedProduct : Product? = nil
}

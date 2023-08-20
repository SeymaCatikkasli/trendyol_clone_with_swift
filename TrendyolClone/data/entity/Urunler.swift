//
//  Urunler.swift
//  TrendyolClone
//
//  Created by Seyma Catikkasli on 19.08.2023.
//

import Foundation

class Urunler {
    var id:Int?
    var ad:String?
    var resim:String?
    var fiyat:String?
    
    init() {
        
    }
    
    init(id: Int, ad: String, resim: String, fiyat: String) {
        self.id = id
        self.ad = ad
        self.resim = resim
        self.fiyat = fiyat
    }
}

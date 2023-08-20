//
//  UrunlerHucre.swift
//  TrendyolClone
//
//  Created by Seyma Catikkasli on 19.08.2023.
//

import UIKit


protocol HucreProtokol {
    func sepeteEkleTikla(indexPath : IndexPath)
        
}



class UrunlerHucre: UICollectionViewCell {
    
    @IBOutlet weak var imageViewUrun: UIImageView!
    
    var hucreProtokol:HucreProtokol?
    var indexPath:IndexPath?
    
    @IBAction func btnSepeteEkle(_ sender: Any) {
        hucreProtokol?.sepeteEkleTikla(indexPath: indexPath!)
        
    }
    @IBOutlet weak var labelUrunAd: UILabel!
    @IBOutlet weak var labelFiyat: UILabel!
    
}

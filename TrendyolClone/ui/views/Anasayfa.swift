//
//  ViewController.swift
//  TrendyolClone
//
//  Created by Seyma Catikkasli on 19.08.2023.
//

import UIKit

class Anasayfa: UIViewController {

    
    @IBOutlet weak var kuponButton: UIButton!
    @IBOutlet weak var kategoriButton: UIButton!
    @IBOutlet weak var filtreleButton: UIButton!
    @IBOutlet weak var siralaButton: UIButton!
    @IBOutlet weak var urunlerCollectionView:UICollectionView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    var urunlerListesi = [Urunler]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urunlerCollectionView.delegate = self
        urunlerCollectionView.dataSource = self
        
        let f1 = Urunler(id: 1, ad: "Clinique Moisture Surge 100 Saat Etkili Nemkendirici", resim: "1", fiyat: "210 TL")
        let f2 = Urunler(id: 2, ad: "Clinique Moisture Surge SPF 25 Nemlendirici", resim: "2", fiyat: "440 TL")
        let f3 = Urunler(id: 3, ad: "Clinique Dramatically Different Moisturizing Nemlendirici", resim: "3", fiyat: "180 TL")
        let f4 = Urunler(id: 4, ad: "Clinique Nemlendirici Losyon Dramatically Different", resim: "4", fiyat: "997 TL")
        let f5 = Urunler(id: 5, ad: "Clinique Clarifying Lotion Arındırıcı Losyon Tonik", resim: "5", fiyat: "487 TL")
        let f6 = Urunler(id: 6, ad: "Clinique For Men Super Energizer Nemlendirici", resim: "6", fiyat: "800 TL")
        urunlerListesi.append(f1)
        urunlerListesi.append(f2)
        urunlerListesi.append(f3)
        urunlerListesi.append(f4)
        urunlerListesi.append(f5)
        urunlerListesi.append(f6)
        
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        

        
       
        
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik = (ekranGenislik - 30) / 2
        
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik*1.6)
        urunlerCollectionView.collectionViewLayout = tasarim
        
        
        
      
        

    }


}

extension Anasayfa :UICollectionViewDelegate,UICollectionViewDataSource, HucreProtokol {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urunlerListesi.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let urun = urunlerListesi[indexPath.row]
        let hucre =  collectionView.dequeueReusableCell(withReuseIdentifier: "urunlerHucre", for: indexPath) as! UrunlerHucre
        
        hucre.imageViewUrun.image = UIImage(named: urun.resim!)
        hucre.labelFiyat.text = "\(urun.fiyat!) ₺"
        
        hucre.labelUrunAd.text = "\(urun.ad!)"
        hucre.layer.borderColor = UIColor.lightGray.cgColor
        hucre.layer.borderWidth = 0.3
        hucre.layer.cornerRadius = 10.0
        
        
        hucre.hucreProtokol = self  
        hucre.indexPath = indexPath
        
        return hucre
    }
    
    func sepeteEkleTikla(indexPath: IndexPath) {
        let urun = urunlerListesi[indexPath.row]
        print("\(urun.ad!) sepete eklendi. ")
    }
}


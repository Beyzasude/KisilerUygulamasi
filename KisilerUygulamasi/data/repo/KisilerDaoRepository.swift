//
//  KisilerDaoRepository.swift
//  KisilerUygulamasi
//
//  Created by Beyza Sude Erol on 10.08.2023.
//

import Foundation
import RxSwift

class KisilerDaoRepository {
    
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    func kaydet(_ kisi_ad: String, _ kisi_tel: String){
        print("Kişi kaydet: \(kisi_ad) - \(kisi_tel)")
    }
    
    func guncelle(_ kisi_id: Int, _ kisi_ad: String, _ kisi_tel: String) {
        print("Kişi Güncelle: \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
    
    func sil(_ kisi_id: Int){
        print("Kisi Sil: \(kisi_id)")
    }
    
    func ara(_ aramaKelimesi: String){
        print("Kişi Ara: \(aramaKelimesi)")
    }
    
    func kisileriYukle(){
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "11111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "22222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Beyza", kisi_tel: "33333")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        
        kisilerListesi.onNext(liste) //Tetikleme
    }
}

//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Beyza Sude Erol on 10.08.2023.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    var krepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    init(){
        kisilerListesi = krepo.kisilerListesi
    }
    
    func sil(_ kisi_id: Int){
        krepo.sil(kisi_id)
        kisileriYukle()
    }
    
    func ara(_ aramaKelimesi: String){
        krepo.ara(aramaKelimesi)
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
}

//
//  KisiKayitViewModel.swift
//  KisilerUygulamasi
//
//  Created by Beyza Sude Erol on 10.08.2023.
//

import Foundation

class KisiKayitViewModel {
    
    var krepo = KisilerDaoRepository()
    
    func kaydet(_ kisi_ad: String, _ kisi_tel: String){
        krepo.kaydet(kisi_ad, kisi_tel)
        
    }
}

//
//  KisiDetayViewModel.swift
//  KisilerUygulamasi
//
//  Created by Beyza Sude Erol on 10.08.2023.
//

import Foundation

class KisiDetayViewModel {
    var krepo = KisilerDaoRepository()
    
    func guncelle(_ kisi_id: Int, _ kisi_ad: String, _ kisi_tel: String) {
        krepo.guncelle(kisi_id, kisi_ad, kisi_tel)
    }
}

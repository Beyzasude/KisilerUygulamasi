//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Beyza Sude Erol on 31.07.2023.
//

import UIKit

class KisiKayit: UIViewController {
    
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text {
            kaydet(ka, kt)
        }
    }
    
    //veri taanı için 2 tane parametre alacak
    func kaydet(_ kisi_ad: String, _ kisi_tel: String){
        print("Kişi kaydet: \(kisi_ad) - \(kisi_tel)")
        
    }
    
}

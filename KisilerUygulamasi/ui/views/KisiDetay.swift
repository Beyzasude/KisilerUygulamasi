//
//  KisiDetay.swift
//  KisilerUygulamasi
//
//  Created by Beyza Sude Erol on 31.07.2023.
//

import UIKit

class KisiDetay: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisi: Kisiler?
    var viewModel = KisiDetayViewModel()
    
    override func viewDidLoad() { //sayfa göründüğünde çalışır (1 kez çalışır)
        super.viewDidLoad()
        if let k = kisi {
            tfKisiAd.text = k.kisi_ad
            tfKisiTel.text = k.kisi_tel
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //sayfa göründüğünde çalışır (Her seferinde)
        //Sayfalara geri dönüldüğünğ anlayabiliriz.
        
    }
    
    override func viewDidDisappear(_ animated: Bool) { //sayfa görünmez olduğunda
        
    }

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text, let k = kisi{
            viewModel.guncelle(k.kisi_id!, ka, kt)
        }
    }
}

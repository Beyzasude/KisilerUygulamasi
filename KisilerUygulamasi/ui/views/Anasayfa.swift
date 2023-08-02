//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Beyza Sude Erol on 31.07.2023.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //super : inheritance
        //self: bulunduğu sınıf
    }

    @IBAction func buttonDetay(_ sender: Any) {
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "Beyza", kisi_tel: "1111")
        performSegue(withIdentifier: "toDetay", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay"{
            //Ant -> super class
            //kisiler -> sub class
            //Downcasting super < sub
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay //Downcasting
                gidilecekVC.kisi = kisi
            }
        }
    }
}


//
//  ViewController2.swift
//  Notification Center Uygulama
//
//  Created by Abdüssamed Söğüt on 1.03.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func gonder(_ sender: Any) {
   
        let kisi = Kisiler(kisi_ad: "Kenan", kisi_yas: 33)
        
        NotificationCenter.default.post(name: .bildirimAdi, object: nil, userInfo: ["mesaj" : "Merhaba", "tarih":Date(),"nesne":kisi ])
        
        dismiss(animated: true)
    }
    
}

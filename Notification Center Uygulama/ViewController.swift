//
//  ViewController.swift
//  Notification Center Uygulama
//
//  Created by Abdüssamed Söğüt on 1.03.2023.
//

import UIKit

extension Notification.Name {
    static let bildirimAdi = Notification.Name("benimYayin")
}


class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.yap(notification:)),
                                               name: .bildirimAdi,
                                               object: nil)
        
        
        
    }

    @objc func yap(notification:NSNotification)  {
        let gelenMesaj = notification.userInfo?["mesaj"]
        let gelenTarih = notification.userInfo?["tarih"]
        let gelenKisiNesnesi = notification.userInfo?["nesne"] as! Kisiler

        labelSonuc.text = " \(gelenKisiNesnesi.kisi_ad!) - \(gelenTarih!) - \(gelenMesaj!)"
    }
    

}


//
//  Kisiler.swift
//  Notification Center Uygulama
//
//  Created by Abdüssamed Söğüt on 1.03.2023.
//

import Foundation
 
class Kisiler {
    var kisi_ad: String?
    var kisi_yas: Int?
    
    init() {
    }
    
    init(kisi_ad: String, kisi_yas: Int) {
        self.kisi_ad = kisi_ad
        self.kisi_yas = kisi_yas
    }
    
}

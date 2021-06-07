//
//  Models.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 10/05/21.
//

import Foundation


struct Crypto: Codable {
    let asset_id: String
    let name: String?
    let price_usd: Float?
    let id_icon: String?
    
}

struct Icons: Codable {
    let asset_id: String
    let url: String
}

//
//  Bundle.swift
//  Fin4teenApp3
//
//  Created by Leonardo Portes on 11/11/21.
//

import Foundation

class BundleReference { }

extension Bundle {
    static var fin4teen: Bundle {
        return Bundle(for: BundleReference.self)
    }
}

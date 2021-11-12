//
//  StringExtension.swift
//  Fin4teenApp3
//
//  Created by Leonardo Portes on 11/11/21.
//

import Foundation
import UIKit

import Foundation
import UIKit

public extension String {
    
    /// An empty swift string
    static var empty: String {
        return ""
    }
    
    /// Returns localized string
    /// - Returns: Return localized string
    func localize(_ accessibility: Bool = false, bundle: Bundle) -> String {
        return NSLocalizedString(self, tableName: accessibility ? "AccessibilityLocalizable" : nil, bundle: bundle, value: "", comment: "")
    }
    
}

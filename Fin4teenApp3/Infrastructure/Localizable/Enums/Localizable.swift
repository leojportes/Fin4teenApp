//
//  Localizable.swift
//  Fin4teenApp3
//
//  Created by Leonardo Portes on 11/11/21.
//

import UIKit
import Foundation

enum Localizable: String {
    
    //MARK: - Login
    
    case titleAlertLogin
    case messageAlertLogin
    case actionAlertLogin
    
    //MARK: - SignUp
    
    case titleAlertSignUp
    case messageAlertSignUp
    case actionAlertSignUp
    
    case titleFailSignUp
    case messageFailSignUp
    
    case passwordDiferents
    
    //MARK: - Instagram
    
    case titleAlertInsta
    case messageAlertInsta
    case actionAlertInsta
    case urlInsta
    
    //MARK: - Default Alert
    
    case action
    
    var localize: String {
        return rawValue.localize(false, bundle: .fin4teen)
    }
}

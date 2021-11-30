//
//  HomeViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Portes on 30/11/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func logoutButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

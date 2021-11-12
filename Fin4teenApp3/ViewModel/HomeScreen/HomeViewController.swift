//
//  HomeViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 07/06/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions

    @IBAction func logoutButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
 
}

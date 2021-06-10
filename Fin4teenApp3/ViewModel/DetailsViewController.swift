//
//  DetailsViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 07/06/21.
//

import UIKit

class DetailsViewController: UIViewController {

    //MARK: Variables
    
    var dado:EntertainmentApp! = nil


//MARK: Outlets

@IBOutlet weak var detalhesLivrosLabel: UILabel?

@IBOutlet weak var detalhesLivrosImage: UIImageView!


//MARK: Actions

@IBAction func dismissActionLivros(_ sender: Any) {
    navigationController?.popViewController(animated: true)
}


//MARK: LifeCycle
    var name = ""
    
override func viewDidLoad() {
    super.viewDidLoad()
    detalhesLivrosLabel?.text = name
    
}
    
    func setConfig(name: String){
       
        self.name = name

    }

}

//
//  DetailsViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 07/06/21.
//

import UIKit

class DetailsViewController: UIViewController {

    
    
//MARK: Variables
    
    //labels and images
    var name = ""
    var nameImage = ""
    var descriptionD = ""
    
    //buttons
    var linkNetflix = ""
    var linkAmazon = ""
    var linkApple = ""
    
    
//MARK: Outlets

    @IBOutlet weak var detailsDescription: UITextView?
    
    @IBOutlet weak var detailsTitleLabel: UILabel?
    
    @IBOutlet weak var detailsImage: UIImageView?

//MARK: Actions

@IBAction func dismissActionLivros(_ sender: Any) {
    navigationController?.popViewController(animated: true)
}

    @IBAction func btNetflix(_ sender: Any) {
        UIApplication.shared.open(URL(string: linkNetflix)! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func btAmazon(_ sender: Any) {
        UIApplication.shared.open(URL(string: linkAmazon)! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func btAppleTv(_ sender: Any) {
        UIApplication.shared.open(URL(string: linkApple)! as URL, options: [:], completionHandler: nil)
    }
    
    
//MARK: LifeCycle
 
override func viewDidLoad() {
    super.viewDidLoad()
    detailsTitleLabel?.text = name
    detailsImage?.image = UIImage(named: nameImage)
    detailsDescription?.text = descriptionD
    
}

//MARK: Functions -
    
    func setDescriptionConfig(description: String){
        self.descriptionD = description
    }
     
    func setNameConfig(name: String){
        self.name = name
    }
    
    func setImageConfig(nameImage: String){
        self.nameImage = nameImage
    }
    
    func setLinkNetflix(linkNetflix: String){
        self.linkNetflix = linkNetflix
    }
    
    func setLinkAmazon(linkAmazon: String){
        self.linkAmazon = linkAmazon
    }
    
    func setLinkApple(linkApple: String){
        self.linkApple = linkApple
    }
}

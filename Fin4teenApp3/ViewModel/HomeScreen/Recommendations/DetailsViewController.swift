//
//  DetailsViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 07/06/21.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //MARK: - Private properties
    
    private var name = String.empty
    private var nameImage = String.empty
    private var descriptionD = String.empty
    private var sectionTypeName = String.empty
    
    /// Constants to Buttons Streaming
    private var linkNetflix = String.empty
    private var linkAmazon = String.empty
    private var linkApple = String.empty
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var appleTvButton: UIButton!
    @IBOutlet weak var netflixButton: UIButton!
    @IBOutlet weak var amazonButton: UIButton!
 
    @IBOutlet weak var detailsDescription: UITextView?
    @IBOutlet weak var detailsTitleLabel: UILabel?
    @IBOutlet weak var detailsImage: UIImageView?
    @IBOutlet weak var sectionType: UILabel!
    
    //MARK: - Actions
    
    @IBAction func dismissActionLivros(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btNetflix(_ sender: UIButton!) {
        showAlertOrUrl(linkPlataform: linkNetflix)
    }
    
    @IBAction func btAmazon(_ sender: UIButton!) {
        showAlertOrUrl(linkPlataform: linkAmazon)
    }
    
    @IBAction func btAppleTv(_ sender: UIButton!) {
        showAlertOrUrl(linkPlataform: linkApple)
    }
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTitleLabel?.text = name
        detailsImage?.image = UIImage(named: nameImage)
        detailsDescription?.text = descriptionD
        sectionType?.text = sectionTypeName
    }
    
    //MARK: - Public methods
    
    public func setup(descriptionConfig: String,
                      nameConfig: String,
                      imageConfig: String,
                      linkNetflix: String,
                      linkAmazon: String,
                      linkAppleTv: String,
                      sectionType: String) {
        
        self.descriptionD = descriptionConfig
        self.name = nameConfig
        self.nameImage = imageConfig
        self.linkNetflix = linkNetflix
        self.linkAmazon = linkAmazon
        self.linkApple = linkAppleTv
        self.sectionTypeName = sectionType
        
    }
    
    // MARK: - Private methods
    
    private func alertToWithoutURL() {
        let alert = UIAlertController(title: Constants.titleAlert, message: Constants.messageAlert, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: Constants.titleActionAlert, style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    private func showAlertOrUrl(linkPlataform: String) {
        let withoutUrl = "semUrl"
        
        if linkPlataform == withoutUrl {
            alertToWithoutURL()
        } else {
            UIApplication.shared.open(URL(string: linkPlataform)! as URL, options: [:], completionHandler: nil)
        }
    }
    
}

private struct Constants {
    static let titleAlert: String = "Ops, desculpe!"
    static let messageAlert: String = "Infelizmente o conteúdo não está disponível nesta plataforma."
    static let titleActionAlert: String = "Voltar"
}

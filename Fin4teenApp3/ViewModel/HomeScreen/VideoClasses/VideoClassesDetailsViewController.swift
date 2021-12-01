//
//  VideoClassesDetailsViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 17/06/21.
//

import UIKit

class VideoClassesDetailsViewController: UIViewController {
    
    //MARK: Private properties
    
    private var nameVideoClasses = String.empty
    private var nameImageVideoClasses = String.empty
    private var descriptionVideoClasses = String.empty
    private var sectionTypeVideoC = String.empty
    private var linkVideoClass = String.empty
    
    //MARK: IBOutlets

    @IBOutlet weak var detailsTitleLabel: UILabel?
    @IBOutlet weak var detailsImage: UIImageView?
    @IBOutlet weak var sectionTypeVideoClasses: UILabel!
    
    //MARK: Actions
    
    @IBAction func watchVideoButton(_ sender: UIButton) {
        showAlertOrUrl(linkPlataform: linkVideoClass)
    }
    
    @IBAction func dismissActionLivros(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTitleLabel?.text = nameVideoClasses
        detailsImage?.image = UIImage(named: nameImageVideoClasses)
        sectionTypeVideoClasses?.text = sectionTypeVideoC
    }
    
    // MARK: - Public Methods
    
    func setup(name: String,
               image: String,
               sectionName: String,
               linkVideo: String) {
        self.nameVideoClasses = name
        self.nameImageVideoClasses = image
        self.sectionTypeVideoC = sectionName
        self.linkVideoClass = linkVideo
    }
    
    // MARK: - Private methods
    
    private func showAlertOrUrl(linkPlataform: String) {
        let withoutUrl = "semUrl"
        
        if linkPlataform == withoutUrl {
            alertToWithoutURL()
        } else {
            UIApplication.shared.open(URL(string: linkPlataform)! as URL, options: [:], completionHandler: nil)
        }
    }
    
    private func alertToWithoutURL() {
        let alert = UIAlertController(title: Constants.titleAlert, message: Constants.messageAlert, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: Constants.titleActionAlert, style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

private struct Constants {
    static let titleAlert: String = "Ops, desculpe!"
    static let messageAlert: String = "Infelizmente o conteúdo não está disponível nesta plataforma."
    static let titleActionAlert: String = "Voltar"
}

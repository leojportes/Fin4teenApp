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
    
    /// Buttons Streaming
    private var linkNetflix = String.empty
    private var linkAmazon = String.empty
    private var linkApple = String.empty
    
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var detailsDescription: UITextView?
    @IBOutlet weak var detailsTitleLabel: UILabel?
    @IBOutlet weak var detailsImage: UIImageView?
    @IBOutlet weak var sectionType: UILabel!
    
    //MARK: - Actions
    
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
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTitleLabel?.text = name
        detailsImage?.image = UIImage(named: nameImage)
        detailsDescription?.text = descriptionD
        sectionType?.text = sectionTypeName
    }
    
    //MARK: - Methods
    
    func setup(descriptionConfig: String,
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
    
}

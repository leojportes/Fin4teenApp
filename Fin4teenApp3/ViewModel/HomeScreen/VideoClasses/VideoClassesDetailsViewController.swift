//
//  VideoClassesDetailsViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 17/06/21.
//

import UIKit

class VideoClassesDetailsViewController: UIViewController {
    //MARK: Variables
    
    //labels and images
    var nameVideoClasses = ""
    var nameImageVideoClasses = ""
    var descriptionVideoClasses = ""
    var sectionTypeVideoC = ""
    
    //MARK: Outlets
    
    @IBOutlet weak var detailsDescription: UITextView?
    
    @IBOutlet weak var detailsTitleLabel: UILabel?
    
    @IBOutlet weak var detailsImage: UIImageView?
    
    @IBOutlet weak var sectionTypeVideoClasses: UILabel!
    //MARK: Actions
    
    @IBAction func dismissActionLivros(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTitleLabel?.text = nameVideoClasses
        detailsImage?.image = UIImage(named: nameImageVideoClasses)
        detailsDescription?.text = descriptionVideoClasses
        sectionTypeVideoClasses?.text = sectionTypeVideoC
    }
    
    //MARK: Functions VideClasses-
    
    func setDescriptionConfigVideoClasses(descriptionVidClas: String){
        self.descriptionVideoClasses = descriptionVidClas
    }
    
    func setNameConfigVideoClasses(name: String){
        self.nameVideoClasses = name
    }
    
    func setImageConfigVideoClasses(nameImage: String){
        self.nameImageVideoClasses = nameImage
    }
    
    func setSectionTypeVclasses(sectionName: String){
        self.sectionTypeVideoC = sectionName
    }
    
}

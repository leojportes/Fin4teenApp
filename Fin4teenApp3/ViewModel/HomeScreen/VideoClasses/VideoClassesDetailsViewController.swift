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
    
    //MARK: IBOutlets
    
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
    
    //MARK: - Methods
    
    func setDescriptionConfigVideoClasses(descriptionVidClas: String) {
        self.descriptionVideoClasses = descriptionVidClas
    }
    
    func setNameConfigVideoClasses(name: String) {
        self.nameVideoClasses = name
    }
    
    func setImageConfigVideoClasses(nameImage: String) {
        self.nameImageVideoClasses = nameImage
    }
    
    func setSectionTypeVclasses(sectionName: String) {
        self.sectionTypeVideoC = sectionName
    }
    
}

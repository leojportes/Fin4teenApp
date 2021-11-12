//
//  ViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 06/06/21.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDelegate{
    
    //MARK: - Actions
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var myTableView: UITableView!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - Extensions

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return eData[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kCell = "cell"
        let cell = myTableView.dequeueReusableCell(withIdentifier: kCell, for: indexPath) as! MyTableViewCell
        cell.myCollectionView.tag = indexPath.section
        
        cell.myCollectionView.delegate = self as UICollectionViewDelegate
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
            header.textLabel?.textColor = .white
            header.textLabel?.font = UIFont(name: "Helvetica Neue Bold", size: 22)
        }
        view.tintColor = .black
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let books = "Livros"
        let kDetail = "Details"
        let kVideoClesses = "VideoClassesDetails"
        
        let nome = eData[collectionView.tag].name[indexPath.row]
        let description = eData[collectionView.tag].description[indexPath.row]
        let nameImage = eData[collectionView.tag].imageGallery[indexPath.row]
        let linkNetflix = eData[collectionView.tag].linkNetflix[indexPath.row]
        let linkAmazon = eData[collectionView.tag].linkAmazon[indexPath.row]
        let linkApple = eData[collectionView.tag].LinkApple[indexPath.row]
        let section = eData[collectionView.tag].sectionType
        
        if section != books {
            let setupDetailVC = self.storyboard?.instantiateViewController(withIdentifier: kDetail) as! DetailsViewController
            
            setupDetailVC.setup(descriptionConfig: description,
                                nameConfig: nome,
                                imageConfig: nameImage,
                                linkNetflix: linkNetflix,
                                linkAmazon: linkAmazon,
                                linkAppleTv: linkApple,
                                sectionType: section)
            
            self.navigationController?.pushViewController(setupDetailVC, animated: true)
        } else {
            let setupVideoClassesVC = self.storyboard?.instantiateViewController(withIdentifier: kVideoClesses) as! VideoClassesDetailsViewController
            self.navigationController?.pushViewController(setupVideoClassesVC, animated: true)
            setupVideoClassesVC.setImageConfigVideoClasses(nameImage: nameImage)
            setupVideoClassesVC.setNameConfigVideoClasses(name: nome)
            setupVideoClassesVC.setDescriptionConfigVideoClasses(descriptionVidClas: description)
            setupVideoClassesVC.setSectionTypeVclasses(sectionName: section)
        }
    }
}

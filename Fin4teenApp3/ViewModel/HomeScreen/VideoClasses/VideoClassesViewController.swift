//
//  VideoClassesViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 10/06/21.
//

import UIKit

class VideoClassesViewController: UIViewController, UICollectionViewDelegate{
    
    //MARK: Actions:
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: Outlets:
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    //MARK: LifeCycle:
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: Extensions:

extension VideoClassesViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return eDataClasses.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return eDataClasses[section].sectionTypeClasses
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VideoClassesMyTableViewCell
        cell.myCollectionViewVideoClasses.tag = indexPath.section
        
        cell.myCollectionViewVideoClasses.delegate = self as UICollectionViewDelegate
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
        let nome = eDataClasses[collectionView.tag].nameClasses[indexPath.row]
        let section = eDataClasses[collectionView.tag].sectionTypeClasses
        let nameImage = eDataClasses[collectionView.tag].imageGalleryClasses[indexPath.row]
        let data2 = self.storyboard?.instantiateViewController(withIdentifier: "VideoClassesDetails") as! VideoClassesDetailsViewController
        data2.setSectionTypeVclasses(sectionName: section)
        data2.setNameConfigVideoClasses(name: nome)
        data2.setImageConfigVideoClasses(nameImage: nameImage)
     
        self.navigationController?.pushViewController(data2, animated: true)
        
    }
}

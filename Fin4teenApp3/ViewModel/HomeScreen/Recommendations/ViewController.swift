//
//  ViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 06/06/21.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDelegate{
    
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

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
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
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
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
        
        let nome = eData[collectionView.tag].name[indexPath.row]
        let description = eData[collectionView.tag].description[indexPath.row]
        let nameImage = eData[collectionView.tag].imageGallery[indexPath.row]
        let linkNetflix = eData[collectionView.tag].linkNetflix[indexPath.row]
        let linkAmazon = eData[collectionView.tag].linkAmazon[indexPath.row]
        let linkApple = eData[collectionView.tag].LinkApple[indexPath.row]
        let section = eData[collectionView.tag].sectionType
        
        print(section)
        if section != "Livros"{
            let data2 = self.storyboard?.instantiateViewController(withIdentifier: "Details") as! DetailsViewController
            data2.setDescriptionConfig(description: description)
            data2.setNameConfig(name: nome)
            data2.setImageConfig(nameImage: nameImage)
            data2.setLinkNetflix(linkNetflix: linkNetflix)
            data2.setLinkAmazon(linkAmazon: linkAmazon)
            data2.setLinkApple(linkApple: linkApple)
            data2.setSectionType(sectionType: section)
            self.navigationController?.pushViewController(data2, animated: true)
        }else{
            let data3 = self.storyboard?.instantiateViewController(withIdentifier: "VideoClassesDetails") as! VideoClassesDetailsViewController
            self.navigationController?.pushViewController(data3, animated: true)
            data3.setImageConfigVideoClasses(nameImage: nameImage)
            data3.setNameConfigVideoClasses(name: nome)
            data3.setDescriptionConfigVideoClasses(descriptionVidClas: description)
            data3.setSectionTypeVclasses(sectionName: section)
        }
    }
}

//
//  myTableViewCell.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 06/06/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    //MARK: - Properties
    
    var detailsVC: UIViewController = DetailsViewController()
    var productVC: UIViewController?
    
    //MARK: - Init
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

//MARK: - Extensions

extension MyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kCell = "collectioncell"
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: kCell, for: indexPath) as! MyCollectionView
        cell.myImage.image = UIImage(named: eData[myCollectionView.tag].imageGallery[indexPath.row])

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let kMain = "Main"
        let kDetails = "Details"

        let navigation:UINavigationController = UINavigationController()
        let data2 = UIStoryboard(name: kMain, bundle: nil).instantiateViewController(withIdentifier: kDetails) as! DetailsViewController
        
        navigation.pushViewController(data2, animated: true)
    }
    
}



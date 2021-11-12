//
//  VideoClassesMyTableViewCell.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 17/06/21.
//

import UIKit

class VideoClassesMyTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    @IBOutlet weak var myCollectionViewVideoClasses: UICollectionView!
    var videoClassesDetails: UIViewController = VideoClassesDetailsViewController()
    var productVC: UIViewController?
    
    //MARK: - Init
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionViewVideoClasses.delegate = self
        myCollectionViewVideoClasses.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

//MARK: - Extensions

extension VideoClassesMyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eDataClasses[myCollectionViewVideoClasses.tag].imageGalleryClasses.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kCollectionCell = "collectioncellVideoClasses"
        let cell = myCollectionViewVideoClasses.dequeueReusableCell(withReuseIdentifier: kCollectionCell, for: indexPath) as! VideoClassesMyCollectionViewCell
        cell.myImageVideoClasses.image = UIImage(named: eDataClasses[myCollectionViewVideoClasses.tag].imageGalleryClasses[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let kDetails = "Details"
        let kMain = "Main"
        let nome = eDataClasses[myCollectionViewVideoClasses.tag].nameClasses[indexPath.row]
        print(nome)
        let navigation:UINavigationController = UINavigationController()
        let setupVC = UIStoryboard(name: kMain, bundle: nil).instantiateViewController(withIdentifier: kDetails) as! VideoClassesDetailsViewController
        
        navigation.pushViewController(setupVC, animated: true)
    }
    
}



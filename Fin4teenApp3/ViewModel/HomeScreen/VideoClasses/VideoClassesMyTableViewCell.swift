//
//  VideoClassesMyTableViewCell.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 17/06/21.
//

import UIKit

class VideoClassesMyTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var myCollectionViewVideoClasses: UICollectionView!
    
    var dado:UIViewController = VideoClassesDetailsViewController()
    
    var productVC:UIViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionViewVideoClasses.delegate = self
        myCollectionViewVideoClasses.dataSource = self
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}

extension VideoClassesMyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eDataClasses[myCollectionViewVideoClasses.tag].imageGalleryClasses.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = myCollectionViewVideoClasses.dequeueReusableCell(withReuseIdentifier: "collectioncellVideoClasses", for: indexPath) as! VideoClassesMyCollectionViewCell
        cell.myImageVideoClasses.image = UIImage(named: eDataClasses[myCollectionViewVideoClasses.tag].imageGalleryClasses[indexPath.row])
        
        //Show Title Label
        //        cell.myLabelFilmes.text = eData[myCollectionView.tag].name[indexPath.row]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let nome = eDataClasses[myCollectionViewVideoClasses.tag].nameClasses[indexPath.row]
        print(nome)
        let navigation:UINavigationController = UINavigationController()
        let data2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Details") as! VideoClassesDetailsViewController
        
        navigation.pushViewController(data2, animated: true)
    }
    
}



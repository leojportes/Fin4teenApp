//
//  myTableViewCell.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 06/06/21.
//

import UIKit

class MyTableViewCell: UITableViewCell{

    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var productVC:UIViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! MyCollectionView
        cell.myImage.image = UIImage(named: eData[myCollectionView.tag].imageGallery[indexPath.row])
        cell.myLabelFilmes.text = eData[myCollectionView.tag].name[indexPath.row]
        return cell
        
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        productVC?.performSegue(withIdentifier: "segueDatails", sender: nil)
        
    }

    
}



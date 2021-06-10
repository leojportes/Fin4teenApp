//
//  myTableViewCell.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 06/06/21.
//

import UIKit

 class MyTableViewCell: UITableViewCell {
    
    

    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var dado:UIViewController = DetailsViewController()
    
    var productVC:UIViewController?
    
     override func awakeFromNib() {
        super.awakeFromNib()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        // Initialization code
    }

     override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
//    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        productVC = segue.destination as? DetailsViewController
//        navigationItem.title = "Categorias"
//        segueDatails
//        if segue.identifier == "segueTecnology"{
//            nextScreenVC?.getCategory = "Tecnologia"
//            nextScreenVC?.linkUrl = CategoriesUrl.categories.urlTech
    
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
        
        let nome = eData[myCollectionView.tag].name[indexPath.row]
        print(nome)
        
        let navigation:UINavigationController = UINavigationController()
        
//        let data = productVC?.storyboard?.instantiateViewController(withIdentifier: "Details") as! DetailsViewController

        let data2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Details") as! DetailsViewController
        
        navigation.pushViewController(data2, animated: true)
        

//        productVC?.performSegue(withIdentifier: "segueDatails", sender: nil)

    }
    
}

//@objc func viewdetalhes(sender:UIButton){
//    let indexpath1 = IndexPath(row: sender.tag, section: 0)
//    let home = self.storyboard?.instantiateViewController(withIdentifier: "DetalhesLivrosController") as! LivrosDetalhes
//
//    home.sLivros = itemListaLivros[indexpath1.row]
//    self.navigationController?.pushViewController(home, animated: true)
//
//}



//
//  ViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 06/06/21.
//

import UIKit

var eData = [
    EntertainmentApp(sectionType: "Filmes", imageGallery: ["becoming_buffet-500x739","capitalism","olobodewallstreet","enron","fome_poder-500x667","grande_aposta-500x780","madoff","mago_mentiras-500x742","margin_call-500x721"], name: ["Como ser Warren Buffett","Capitalismo: Uma história de amor","O Lobo de Wall Street","Enron: Os mais espertos da sala","Fome de Poder","A grande Aposta"," À caça de Madoff (Chasing Madoff)","O mago das mentiras","Margin Call: O dia antes do fim"]),
    EntertainmentApp(sectionType: "Livros", imageGallery: ["","","","","","",""], name: ["","","","","","",""]),
    EntertainmentApp(sectionType: "Séries/Programas de Tv", imageGallery: ["billions","blackmonday","industry","milliondollartraders","oSocio","sharkTank","americangreed"], name: ["","","","","","",""])

]

class ViewController: UIViewController{
    

    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

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
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        view.tintColor = .black

    }
    

    
    
}

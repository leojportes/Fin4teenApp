//
//  ContateNosViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 17/06/21.
//

import UIKit

class ContactUsViewController: UIViewController {

    @IBAction func dismissActionbt(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func btInstagram(_ sender: Any) {
        
        let alertControllerLivros = UIAlertController(title: "Atenção!", message: "Deseja acessar nosso perfil no Instagram?", preferredStyle: UIAlertController.Style.alert)
        alertControllerLivros.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        alertControllerLivros.addAction(UIAlertAction(title: "Acessar", style: .default, handler: { action in
            self.urlInstagram()
            
        }))
        self.present(alertControllerLivros, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
func urlInstagram(){
    let url = "https://www.instagram.com/fin4teenapp/"
    UIApplication.shared.open(URL(string: url)! as URL, options: [:], completionHandler: nil)
}

}

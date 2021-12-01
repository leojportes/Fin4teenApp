//
//  ContateNosViewController.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 17/06/21.
//

import UIKit

class ContactUsViewController: UIViewController {
    
    // MARK: - Actions
    
    @IBAction func dismissActionbt(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionInstagram(_ sender: UIButton) {
        
        let alertControllerLivros = UIAlertController(title: "Atenção!", message: "Deseja acessar nosso perfil no Instagram?", preferredStyle: UIAlertController.Style.alert)
        alertControllerLivros.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        alertControllerLivros.addAction(UIAlertAction(title: "Acessar", style: .default, handler: { action in
            self.urlInstagram()
            
        }))
        self.present(alertControllerLivros, animated: true, completion: nil)
        
    }
    
    @IBAction func actionSite(_ sender: UIButton) {
        let alert = UIAlertController(title: "Atenção!", message: "Deseja acessar nosso site?", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Acessar", style: .default, handler: { action in
            self.urlSite()
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Private methods
    
    private func urlInstagram(){
        let url = "https://www.instagram.com/fin4teenapp/"
        UIApplication.shared.open(URL(string: url)! as URL, options: [:], completionHandler: nil)
    }
    
    func urlSite(){
        let url = "https://leojportes.github.io/Fin4teenWeb/"
        UIApplication.shared.open(URL(string: url)! as URL, options: [:], completionHandler: nil)
    }
    
}

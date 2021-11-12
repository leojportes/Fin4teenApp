//
//  ResetPasswordViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 03/05/21.
//

import UIKit
import Firebase

class ResetPasswordViewController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var emailTextField: UITextField!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Methods
    
    func alert(title:String, message:String){
        let alertController:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok:UIAlertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
    }
    
    //MARK: - Actions
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func resetPasswordButton(_ sender: Any) {
        let auth = Auth.auth()
        
        auth.sendPasswordReset(withEmail: emailTextField.text!) { (error) in
            if error != nil {
                self.alert(title: "Ops! Algo deu errado.", message: "Dados incorretos, tente novamente!")
                
                return
            } else {
                self.alert(title: "Verifique seu Email", message: "O link para redefinir sua senha foi enviado para o email mencionado.")
            }
        }
    }
}

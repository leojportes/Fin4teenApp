//
//  CadastroViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 03/05/21.
//

import UIKit
import Firebase

class CadastroViewController: UIViewController {
    
    //MARK: Variables
    
    var auth:Auth?
    let imageicon = UIImageView()
    var iconClick = false
    let imageiconConfirma = UIImageView()
    var iconClickConfirma = false
    

    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
        olhoSenha1()
        olhoSenha2()
    
    }
    
   
    
    //MARK: Outlets
    
    @IBOutlet weak var emailcadastrarTextField: UITextField!
    
    @IBOutlet weak var senhacadastrarTextField: UITextField!
    
    @IBOutlet weak var confirmasenhaTextField: UITextField!
    
    
    //MARK: Actions
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func btCadastrar(_ sender: UIButton) {
        let email:String = self.emailcadastrarTextField.text ?? ""
        let senha:String = self.senhacadastrarTextField.text ?? ""
        let senha2:String = self.confirmasenhaTextField.text ?? ""
        
        if senha == senha2 {
            self.auth?.createUser(withEmail: email, password: senha, completion: { (result, error) in
                if error != nil{
                    self.alert(title: "Atenção!", message: "Falha ao cadastrar")
                    print("Email já cadastrado!")
                
                }else{
                    self.alert(title: "Pronto!", message: "Email e senha cadastrados.")

                }
            })
        }else{
            self.alert(title: "Atenção!", message: "Senhas diferentes.")
            return
        }
    }
    
    
    // MARK: Functions for Password toggle
    
    
    public func olhoSenha2(){
        imageicon.image = UIImage(named: "eye_closed")
        
        let contentView = UIView()
        contentView.addSubview(imageicon)

        contentView.frame = CGRect(x: 0, y: 0, width: UIImage(named:  "eye_closed.png")!.size.width, height: UIImage(named: "eye_closed.png")!.size.height)
        imageicon.frame = CGRect(x: -10, y: 0, width: UIImage(named:  "eye_closed.png")!.size.width, height: UIImage(named: "eye_closed.png")!.size.height)
        senhacadastrarTextField.rightView = contentView
        senhacadastrarTextField.rightViewMode = .always
    
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageicon.isUserInteractionEnabled = true
        imageicon.addGestureRecognizer(tapGestureRecognizer)
    }
    
    
    @objc func imageTapped(tapGestureRecognizer:UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView

        if iconClick {
            iconClick=false
            tappedImage.image = UIImage(named: "eye_open.png")
            senhacadastrarTextField.isSecureTextEntry = false
           
        }else{
            iconClick=true
            tappedImage.image = UIImage(named: "eye_closed.png")
            senhacadastrarTextField.isSecureTextEntry = true
            }
    }
    
    
    
    public func olhoSenha1(){
        
        imageiconConfirma.image = UIImage(named: "eye_closed")

        let contentViewConfirma = UIView()
        contentViewConfirma.addSubview(imageiconConfirma)

        contentViewConfirma.frame = CGRect(x: 0, y: 0, width: UIImage(named:  "eye_closed.png")!.size.width, height: UIImage(named: "eye_closed.png")!.size.height)
        imageiconConfirma.frame = CGRect(x: -10, y: 0, width: UIImage(named:  "eye_closed.png")!.size.width, height: UIImage(named: "eye_closed.png")!.size.height)
        confirmasenhaTextField.rightView = contentViewConfirma
        confirmasenhaTextField.rightViewMode = .always
    
        
        let tapGestureRecognizerConfirma = UITapGestureRecognizer(target: self, action: #selector(imageTappedConfirma(tapGestureRecognizerConfirma:)))
        imageiconConfirma.isUserInteractionEnabled = true
        imageiconConfirma.addGestureRecognizer(tapGestureRecognizerConfirma)
    }
    
    
    @objc func imageTappedConfirma(tapGestureRecognizerConfirma:UITapGestureRecognizer){
        let tappedImageConfirma = tapGestureRecognizerConfirma.view as! UIImageView

        if iconClickConfirma{
            iconClickConfirma=false
            tappedImageConfirma.image = UIImage(named: "eye_open.png")
            confirmasenhaTextField.isSecureTextEntry = false
           
        }else{
            iconClickConfirma=true
            tappedImageConfirma.image = UIImage(named: "eye_closed.png")
            confirmasenhaTextField.isSecureTextEntry = true
            }
    }
    
    // MARK: Functions
    
    func alert(title:String, message:String){
        let alertController:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok:UIAlertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
        }
    
}



//
//  LoginViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 03/05/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    
    //MARK: - Private properties
    
    private let button = UIButton(type: .custom)
    private var auth:Auth?
    private let imageicon = UIImageView()
    private var iconClick = false
    
    //MARK: - Image identifiers
    
    private let eyeClosed: String = "eye_closed.png"
    private let eyeOpen: String = "eye_open.png"

    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
        setupView()
    }
    
    //MARK: - Private methods
    
    private func setupView() {
        imageicon.image = UIImage(named: eyeClosed)

        let contentView = UIView()
        contentView.addSubview(imageicon)

        contentView.frame = CGRect(x: 0, y: 0,
                                   width: UIImage(named:  eyeClosed)!.size.width,
                                   height: UIImage(named: eyeClosed)!.size.height)
        imageicon.frame = CGRect(x: -10, y: 0,
                                 width: UIImage(named:  eyeClosed)!.size.width,
                                 height: UIImage(named: eyeClosed)!.size.height)
        
        passwordTextField.rightView = contentView
        passwordTextField.rightViewMode = .always

        let tapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                          action: #selector(imageTapped(tapGestureRecognizer:)))
        imageicon.isUserInteractionEnabled = true
        imageicon.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func imageTapped(tapGestureRecognizer:UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        if iconClick {
            iconClick = false
            tappedImage.image = UIImage(named: eyeOpen)
            passwordTextField.isSecureTextEntry = false
        } else {
            iconClick = true
            tappedImage.image = UIImage(named: eyeClosed)
            passwordTextField.isSecureTextEntry = true
        }
    }

    // MARK: Outlets
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    
    // MARK: Actions
    
    @IBAction func joinButton(_ sender: UIButton) {
        
        let kIdentifierSegue = "biblioteca"
        
        let mail:String = self.mailTextField.text ?? String.empty
        let password:String = self.passwordTextField.text ?? String.empty
        
        self.auth?.signIn(withEmail: mail,
                          password: password,
                          completion: { (usuario, error) in
            if error != nil {
                self.alert(title: Localizable.titleAlertLogin.localize,
                           message: Localizable.messageAlertLogin.localize)
            } else {
                self.performSegue(withIdentifier: kIdentifierSegue, sender: nil)
            }
        })
    }
    
    @IBAction func instagramButton(_ sender: AnyObject) {
     
        let alert = UIAlertController(title: Localizable.titleAlertInsta.localize,
                                      message: Localizable.messageAlertInsta.localize,
                                      preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: Localizable.actionAlertInsta.localize,
                                      style: .default,
                                      handler: { action in
                                        self.urlInstagram()
                                        
                                      }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    //MARK: - Methods
    
    func urlInstagram(){
        let url = Localizable.urlInsta.localize
        UIApplication.shared.open(URL(string: url)! as URL, options: [:], completionHandler: nil)
    }
    
    func alert(title: String, message: String) {
        
        let alert:UIAlertController = UIAlertController(title: title,
                                                                  message: message,
                                                                  preferredStyle: .alert)
        
        let okButton:UIAlertAction = UIAlertAction(title: Localizable.action.localize,
                                                   style: .cancel,
                                                   handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

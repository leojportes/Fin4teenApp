//
//  SignUpViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 03/05/21.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    //MARK: Properties
    
    var auth:Auth?
    let imageIconEyeToggle = UIImageView()
    var iconTapped = false
    
    let imageIconEyeToggleCheck = UIImageView()
    var tappedIconCheck = false
    
    //MARK: - Image identifiers
    
    private let eyeClosed: String = "eye_closed.png"
    private let eyeOpen: String = "eye_open.png"
    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
        olhoSenha1()
        setupView()
    }
    
    //MARK: Outlets
    
    @IBOutlet weak var emailSignUpTextField: UITextField!
    @IBOutlet weak var passwordSignUpTextField: UITextField!
    @IBOutlet weak var passwordSignUpCheckTextField: UITextField!
    
    //MARK: Actions
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        let email: String = self.emailSignUpTextField.text ?? String.empty
        let password: String = self.passwordSignUpTextField.text ?? String.empty
        let passwordConfirm: String = self.passwordSignUpCheckTextField.text ?? String.empty
        
        if password == passwordConfirm {
            self.auth?.createUser(withEmail: email, password: password, completion: { (result, error) in
                if error != nil {
                    self.alert(title: Localizable.titleFailSignUp.localize,
                               message: Localizable.messageFailSignUp.localize)
                } else {
                    self.alert(title: Localizable.titleAlertSignUp.localize,
                               message: Localizable.messageAlertSignUp.localize)
                }
            })
            
        } else {
            self.alert(title: Localizable.messageFailSignUp.localize,
                       message: Localizable.passwordDiferents.localize)
            return
        }
    }
    
    //MARK: - Functions for password toggle
    
    public func setupView() {
        imageIconEyeToggle.image = UIImage(named: eyeClosed)
        
        let contentView = UIView()
        contentView.addSubview(imageIconEyeToggle)

        contentView.frame = CGRect(x: 0, y: 0,
                                   width: UIImage(named:  eyeClosed)!.size.width,
                                   height: UIImage(named: eyeClosed)!.size.height)
        imageIconEyeToggle.frame = CGRect(x: -10, y: 0,
                                          width: UIImage(named:  eyeClosed)!.size.width,
                                          height: UIImage(named: eyeClosed)!.size.height)
        
        passwordSignUpTextField.rightView = contentView
        passwordSignUpTextField.rightViewMode = .always
    
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageIconEyeToggle.isUserInteractionEnabled = true
        imageIconEyeToggle.addGestureRecognizer(tapGestureRecognizer)
    }
    
    
    @objc func imageTapped(tapGestureRecognizer:UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        if iconTapped {
            iconTapped = false
            tappedImage.image = UIImage(named: eyeOpen)
            passwordSignUpTextField.isSecureTextEntry = false
            
        } else {
            iconTapped = true
            tappedImage.image = UIImage(named: eyeClosed)
            passwordSignUpTextField.isSecureTextEntry = true
        }
    }
    
    public func olhoSenha1(){
        
        imageIconEyeToggleCheck.image = UIImage(named: eyeClosed)

        let contentViewConfirma = UIView()
        contentViewConfirma.addSubview(imageIconEyeToggleCheck)

        contentViewConfirma.frame = CGRect(x: 0, y: 0,
                                           width: UIImage(named:  eyeClosed)!.size.width,
                                           height: UIImage(named: eyeClosed)!.size.height)
        imageIconEyeToggleCheck.frame = CGRect(x: -10, y: 0,
                                               width: UIImage(named:  eyeClosed)!.size.width,
                                               height: UIImage(named: eyeClosed)!.size.height)
        
        passwordSignUpCheckTextField.rightView = contentViewConfirma
        passwordSignUpCheckTextField.rightViewMode = .always
    
        
        let tapGestureRecognizerConfirma = UITapGestureRecognizer(target: self, action: #selector(imageTappedConfirma(tapGestureRecognizerConfirma:)))
        imageIconEyeToggleCheck.isUserInteractionEnabled = true
        imageIconEyeToggleCheck.addGestureRecognizer(tapGestureRecognizerConfirma)
    }
    
    
    @objc func imageTappedConfirma(tapGestureRecognizerConfirma:UITapGestureRecognizer){
        let tappedImageConfirma = tapGestureRecognizerConfirma.view as! UIImageView

        if tappedIconCheck {
            tappedIconCheck = false
            tappedImageConfirma.image = UIImage(named: eyeOpen)
            passwordSignUpCheckTextField.isSecureTextEntry = false
            
        } else {
            tappedIconCheck = true
            tappedImageConfirma.image = UIImage(named: eyeClosed)
            passwordSignUpCheckTextField.isSecureTextEntry = true
        }
    }
    
    // MARK: Functions
    
    func alert(title:String, message:String){
        let alertController:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok:UIAlertAction = UIAlertAction(title: Localizable.action.localize, style: .cancel, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
    }
    
}



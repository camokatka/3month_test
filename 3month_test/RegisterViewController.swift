

import UIKit
import SnapKit

class RegisterViewController: UIViewController {

    var flag = false
    
    private let logoImageView = UIImageView(image: UIImage(named: "logo"))
    
    private let registerLabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28)
        return label
    }()
    
    private let createLabel: UILabel = {
        let label = UILabel()
        label.text = "Create a new account"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Username"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Email"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let mobileNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Mobile Number"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let mobileNumberTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Mobile Number"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let pswLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let pswTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Password"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let eyeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "eye"), for: .normal)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.161, green: 0.714, blue: 0.965, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        configurateLabel()
        configurateTextFields()
        configurateLoginButton()
    }

    private func initUI() {
        
        view.backgroundColor = .black
        view.addSubview(logoImageView)
        
        logoImageView.snp.makeConstraints { make in
            make.leading.top.trailing.equalTo(view)
        }
    }
    
    private func configurateLabel() {
        
        view.addSubview(registerLabel)
        registerLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImageView.snp.bottom).offset(10)
        }
        
        view.addSubview(createLabel)
        createLabel.snp.makeConstraints { make in
            make.centerX.equalTo(registerLabel.snp.centerX)
            make.top.equalTo(registerLabel.snp.bottom).offset(5)
        }
        
    }
    
    private func configurateTextFields() {
        
        view.addSubview(usernameLabel)
        usernameLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(30)
            make.top.equalTo(createLabel.snp.bottom).offset(30)
        }
        
        view.addSubview(usernameTextField)
        usernameTextField.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(view).inset(30)
            make.height.equalTo(48)
        }
        
        view.addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(30)
            make.top.equalTo(usernameTextField.snp.bottom).offset(10)
        }
        
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(view).inset(30)
            make.height.equalTo(48)
        }
        
        view.addSubview(mobileNumberLabel)
        mobileNumberLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(30)
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
        }
        
        view.addSubview(mobileNumberTextField)
        mobileNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(view).inset(30)
            make.height.equalTo(48)
        }
        
        view.addSubview(pswLabel)
        pswLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(30)
            make.top.equalTo(mobileNumberTextField.snp.bottom).offset(10)
        }
        
        view.addSubview(pswTextField)
        pswTextField.snp.makeConstraints { make in
            make.top.equalTo(pswLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(view).inset(30)
            make.height.equalTo(48)
        }
        
        view.addSubview(eyeButton)
        eyeButton.snp.makeConstraints { make in
            make.centerY.equalTo(pswTextField)
            make.trailing.equalTo(pswTextField.snp.trailing).offset(-5)
        }
        
        eyeButton.addTarget(self, action: #selector(hidePsw), for: .touchUpInside)
    }
    
    private func configurateLoginButton() {
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.centerX.equalTo(view)
            make.leading.trailing.equalTo(view).inset(40)
            make.bottom.equalTo(view.snp.bottom).offset(-130)
        }
        
        loginButton.addTarget(self, action: #selector(goToForgotPsw), for: .touchUpInside)
        
    }
    
    
    @objc func hidePsw(_ sender: UIButton) {
        
        if pswTextField.textColor == .black {
            pswTextField.textColor = .white
        } else {
            pswTextField.textColor = .black
        }
        
    }
    

    
    @objc func goToForgotPsw(_ sender: UIButton) {
        
        flag = false
        fieldIsEmpty(textField: usernameTextField)
        fieldIsEmpty(textField: emailTextField)
        fieldIsEmpty(textField: mobileNumberTextField)
        fieldIsEmpty(textField: pswTextField)
        
        if !flag {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
            navigationController?.pushViewController(vc, animated: true)
            vc.email = emailTextField.text!
        }
        
    }
    
    private func fieldIsEmpty(textField: UITextField) {
        
        if textField.text?.isEmpty ?? true {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 1
            textField.placeholder = "   Fill the information"
            flag = true
        } else {
            textField.layer.borderColor = UIColor.white.cgColor
            
        }
        
    }
    
    
    
}

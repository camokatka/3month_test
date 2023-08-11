
import UIKit
import SnapKit

class ViewController: UIViewController {

    private let logoImageView = UIImageView(image: UIImage(named: "logo"))
        
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28)
        return label
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login to your account"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
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
    
    private let forgotPswLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot Password?"
        label.textColor = .red
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let googleImageView = UIImageView(image: UIImage(named: "google"))
    private let facebookImageView = UIImageView(image: UIImage(named: "facebook"))
    private let instagramImageView = UIImageView(image: UIImage(named: "instagram"))
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.161, green: 0.714, blue: 0.965, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    private let accountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textColor = .systemGray2
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let createButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create Now", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        configurateLabel()
        configurate_email_password()
        configurateIcons()
        configurateLoginButton()
        confugurateCreateAccount()
    }
    
    private func initUI() {
        
        view.backgroundColor = .black
        view.addSubview(logoImageView)
        
        logoImageView.snp.makeConstraints { make in
            make.leading.top.trailing.equalTo(view)
        }
    }
    
    private func configurateLabel() {
        
        view.addSubview(welcomeLabel)
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImageView.snp.bottom).offset(50)
        }
        
        view.addSubview(loginLabel)
        loginLabel.snp.makeConstraints { make in
            make.centerX.equalTo(welcomeLabel.snp.centerX)
            make.top.equalTo(welcomeLabel.snp.bottom).offset(5)
        }
        
    }
    
    private func configurate_email_password() {
        
        view.addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(30)
            make.top.equalTo(loginLabel.snp.bottom).offset(30)
        }
        
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(view).inset(30)
            make.height.equalTo(48)
        }
        
        view.addSubview(pswLabel)
        pswLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(30)
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
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
        
        view.addSubview(forgotPswLabel)
        forgotPswLabel.snp.makeConstraints { make in
            make.top.equalTo(pswTextField.snp.bottom).offset(5)
            make.trailing.equalTo(pswTextField.snp.trailing)
        }
        
    }
    
    private func configurateIcons() {
        view.addSubview(facebookImageView)
        facebookImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view.snp.bottom).offset(-50)
        }
        
        view.addSubview(googleImageView)
        googleImageView.snp.makeConstraints { make in
            make.bottom.equalTo(facebookImageView.snp.bottom)
            make.trailing.equalTo(facebookImageView.snp.leading).offset(-40)
        }
        
        view.addSubview(instagramImageView)
        instagramImageView.snp.makeConstraints { make in
            make.bottom.equalTo(facebookImageView.snp.bottom)
            make.leading.equalTo(facebookImageView.snp.trailing).offset(40)
        }
    }
    
    private func configurateLoginButton() {
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.centerX.equalTo(view)
            make.leading.trailing.equalTo(view).inset(30)
            make.bottom.equalTo(facebookImageView.snp.bottom).offset(-150)
        }
        
        loginButton.addTarget(self, action: #selector(singIn), for: .touchUpInside)
        
    }
    
    private func confugurateCreateAccount() {
        view.addSubview(accountLabel)
        accountLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(10)
            make.leading.equalTo(view).offset(65)
        }
        
        view.addSubview(createButton)
        createButton.snp.makeConstraints { make in
            make.bottom.equalTo(accountLabel.snp.bottom).offset(7)
            make.trailing.equalTo(view).offset(-65)
        }
        
        createButton.addTarget(self, action: #selector(goToRegister), for: .touchUpInside)
    }

    
    @objc func singIn(_ sender: UIButton) {
        
        
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 1
            emailTextField.placeholder = "   Fill the information"
        } else {
            emailTextField.layer.borderColor = UIColor.white.cgColor
        }
        
        if pswTextField.text?.isEmpty ?? true {
            pswTextField.layer.borderColor = UIColor.red.cgColor
            pswTextField.layer.borderWidth = 1
            pswTextField.placeholder = "   Fill the information"
            
        } else {
            pswTextField.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @objc func hidePsw(_ sender: UIButton) {
        if pswTextField.textColor == .black {
            pswTextField.textColor = .white
        } else {
            pswTextField.textColor = .black
        }
        
        
    }
    
    @objc func goToRegister(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        navigationController?.pushViewController(vc, animated: true)
      
        
    }
}


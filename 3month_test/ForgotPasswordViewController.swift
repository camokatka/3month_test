

import UIKit
import SnapKit

class ForgotPasswordViewController: UIViewController {

    var email: String = ""
    
    private let logoImageView = UIImageView(image: UIImage(named: "logo"))
    
    private let forgotLabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28)
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your email"
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
    
    private let methodLabel: UILabel = {
        let label = UILabel()
        label.text = "Choose Another Method"
        label.textColor = .systemGray2
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let helpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Need Help?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private let otpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.161, green: 0.714, blue: 0.965, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Send OTP", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        configurateLabel()
        configurateTextFields()
        confugurateAnotherMethod()
        configurateOtpButton()
        
        emailTextField.text = email

    }
    private func initUI() {
        
        view.backgroundColor = .black
        view.addSubview(logoImageView)
        
        logoImageView.snp.makeConstraints { make in
            make.leading.top.trailing.equalTo(view)
        }
    }
    
    private func configurateLabel() {
        
        view.addSubview(forgotLabel)
        forgotLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImageView.snp.bottom).offset(50)
        }
    }
    
    private func configurateTextFields() {
        
        view.addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(30)
            make.top.equalTo(forgotLabel.snp.bottom).offset(60)
        }
        
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(view).inset(30)
            make.height.equalTo(48)
        }
    }
    
    private func confugurateAnotherMethod() {
        view.addSubview(methodLabel)
        methodLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
            make.leading.equalTo(view).offset(50)
        }
        
        view.addSubview(helpButton)
        helpButton.snp.makeConstraints { make in
            make.bottom.equalTo(methodLabel.snp.bottom).offset(7)
            make.trailing.equalTo(view).offset(-50)
        }
        
    }
    
    private func configurateOtpButton() {
        
        view.addSubview(otpButton)
        otpButton.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.centerX.equalTo(view)
            make.leading.trailing.equalTo(view).inset(40)
            make.bottom.equalTo(view.snp.bottom).offset(-320)
        }
    }
}

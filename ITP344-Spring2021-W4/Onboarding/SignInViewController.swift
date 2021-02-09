//
//  SignInViewController.swift
//  ITP344-Spring2021-W4
//
//  Created by Jack Xu on 2/8/21.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

    let attributedTitleLabel: UILabel = {
        let l = UILabel()
        l.attributedText = NSAttributedString(string: "focus", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 30, weight: .regular),
            NSAttributedString.Key.kern: 20
        ])
        l.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        return l
    }()

    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.placeholder = "Email"
        tf.autocorrectionType = .no
        tf.keyboardType = .emailAddress
        return tf
    }()

    let pwTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.placeholder = "Password"
        tf.autocorrectionType = .no
        tf.isSecureTextEntry = true
        return tf
    }()

    let signInButton: UIButton = {
        let b = UIButton()
        b.setAttributedTitle(NSAttributedString(string: "SIGN IN", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: UIFont.systemFontSize, weight: .regular),
            NSAttributedString.Key.foregroundColor: UIColor.systemBackground,
        ]), for: .normal)
        b.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        b.backgroundColor = .label
        b.layer.shadowRadius = 3
        b.layer.shadowOffset = CGSize(width: 0, height: 2)
        b.layer.shadowColor = UIColor.label.cgColor
        b.layer.shadowOpacity = 0.5
        let height: CGFloat = 50
        b.heightAnchor.constraint(equalToConstant: height).isActive = true
        b.layer.cornerRadius = height / 2
        return b
    }()

    let spacer = UIView()

    let createAccountButton: UIButton = {
        let b = UIButton()
        b.setAttributedTitle(NSAttributedString(string: "Create new account", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: UIFont.systemFontSize, weight: .medium),
            NSAttributedString.Key.foregroundColor: UIColor.systemOrange,
        ]), for: .normal)
        b.addTarget(self, action: #selector(createAccountAction), for: .touchUpInside)
        return b
    }()

    let forgotPWButton: UIButton = {
        let b = UIButton()
        b.setAttributedTitle(NSAttributedString(string: "Forgot password?", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: UIFont.systemFontSize, weight: .thin)
        ]), for: .normal)
        b.addTarget(self, action: #selector(forgotPWAction), for: .touchUpInside)
        return b
    }()

    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.alignment = .fill
        sv.axis = .vertical
        sv.distribution = .fill
        sv.spacing = 10
        return sv
    }()

    func initUI() {
        for view in [attributedTitleLabel, emailTextField, pwTextField, signInButton, spacer, createAccountButton, forgotPWButton] {
            stackView.addArrangedSubview(view)
        }
        view.addSubview(stackView)
        stackView.snp.makeConstraints { (make) in
            make.leadingMargin.trailingMargin.equalToSuperview()
            make.topMargin.equalToSuperview().offset(50)
            make.bottomMargin.equalToSuperview().offset(-10)
        }
        stackView.setCustomSpacing(50, after: attributedTitleLabel)
        stackView.setCustomSpacing(0, after: createAccountButton)
    }

}

extension SignInViewController {

    @objc func forgotPWAction() {

    }

    @objc func signInAction() {
        UIApplication.shared.windows.first?.rootViewController = PrioritiesViewController()
    }

    @objc func createAccountAction() {

    }

}

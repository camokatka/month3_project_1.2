
import UIKit

class ViewController: UIViewController {
    
    private var isSelected = false
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome back"
        label.font = .systemFont(ofSize: 34)
        label.textColor = .white
        return label
    }()
    
    private let signInLabel: UILabel = {
        let label = UILabel()
        label.text = "Sing in to continue"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .white
        label.layer.opacity = 0.61
        return label
    }()
    
    private let welcomeImage = UIImageView(image: UIImage(named: "welcome_logo"))
    

    
    private let btmView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 24
        return view
        
    }()
    
    private let bottomImage = UIImageView(image: UIImage(named: "bottom_logo"))
    
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.133, green: 0.285, blue: 0.583, alpha: 1)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        return button
    }()
    
    private let idLabel: UILabel = {
        let label = UILabel()
        label.text = "Employee Id / Email"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .systemGray2
        return label
    }()
    
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter ID/Email"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray2.cgColor
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.layer.cornerRadius = 12
        return textField
    }()
    
    private let idBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private let pswLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .systemGray2
        return label
    }()
    
    private let pswTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Password"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray2.cgColor
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.layer.cornerRadius = 12
        return textField
    }()
    
    private let pswBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private let eyeImage = UIImageView(image: UIImage(named: "eye_pass"))
    
    private let forgotButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot password?", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        return button
    }()
    
    private let checkboxButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "checkbox"), for: .normal)
        return button
    }()
    
    private let rememberLabel: UILabel = {
        let label = UILabel()
        label.text = "RememberMe"
        label.font = .systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
   
    private let dontLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't Have An Account?"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .black
        return label
    }()
    
    private let singUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initUI()
        
    }
    
    private func initUI() {
        
        view.backgroundColor = UIColor(red: 0.282, green: 0.573, blue: 0.655, alpha: 1)
        
        view.addSubview(welcomeImage)
        welcomeImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)
        ])

        
        view.addSubview(btmView)
        btmView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btmView.heightAnchor.constraint(equalToConstant: 442),
            btmView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            btmView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            btmView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        btmView.addSubview(signInLabel)
        signInLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            signInLabel.bottomAnchor.constraint(equalTo: btmView.topAnchor, constant: -10)
        ])
        
        btmView.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            welcomeLabel.bottomAnchor.constraint(equalTo: signInLabel.topAnchor, constant: -15)
        ])
        
        btmView.addSubview(bottomImage)
        bottomImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //bottomImage.centerXAnchor.constraint(equalTo: btmView.centerXAnchor),
            bottomImage.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            bottomImage.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            bottomImage.bottomAnchor.constraint(equalTo: btmView.bottomAnchor, constant: 0)
        ])
        
        btmView.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInButton.centerXAnchor.constraint(equalTo: btmView.centerXAnchor),
            signInButton.bottomAnchor.constraint(equalTo: bottomImage.topAnchor, constant: -20),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signInButton.widthAnchor.constraint(equalToConstant: 168)
        ])
        
        btmView.addSubview(idLabel)
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            idLabel.topAnchor.constraint(equalTo: btmView.topAnchor, constant: 30)
        ])
        
        btmView.addSubview(idTextField)
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            idTextField.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 15),
            idTextField.heightAnchor.constraint(equalToConstant: 20),
            idTextField.widthAnchor.constraint(equalToConstant: 193)
        ])
        
        btmView.addSubview(idBorderView)
        idBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idBorderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            idBorderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            idBorderView.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 15),
            idBorderView.heightAnchor.constraint(equalToConstant: 1),

        ])
        
        btmView.addSubview(pswLabel)
        pswLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            pswLabel.topAnchor.constraint(equalTo: idBorderView.topAnchor, constant: 30)
        ])
        
        btmView.addSubview(pswTextField)
        pswTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            pswTextField.topAnchor.constraint(equalTo: pswLabel.bottomAnchor, constant: 15),
            pswTextField.heightAnchor.constraint(equalToConstant: 20),
            pswTextField.widthAnchor.constraint(equalToConstant: 193)
        ])
        
        btmView.addSubview(pswBorderView)
        pswBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswBorderView.topAnchor.constraint(equalTo: pswTextField.bottomAnchor, constant: 15),
            pswBorderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            pswBorderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            pswBorderView.heightAnchor.constraint(equalToConstant: 1),

        ])
        
        btmView.addSubview(eyeImage)
        eyeImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            eyeImage.centerXAnchor.constraint(equalTo: pswTextField.centerXAnchor, constant: 240),
            eyeImage.bottomAnchor.constraint(equalTo: pswBorderView.topAnchor, constant: -18)
        ])
        
        signInButton.addTarget(self, action: #selector(singIn), for: .touchUpInside)
        
        btmView.addSubview(forgotButton)
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            forgotButton.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            forgotButton.topAnchor.constraint(equalTo: pswBorderView.bottomAnchor, constant: 5)
        ])
        
        btmView.addSubview(checkboxButton)
        checkboxButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            checkboxButton.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            checkboxButton.topAnchor.constraint(equalTo: pswBorderView.bottomAnchor, constant: 35)
        ])
        
        checkboxButton.addTarget(self, action: #selector(setCheckbox), for: .touchUpInside)
        
        btmView.addSubview(rememberLabel)
        rememberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            rememberLabel.topAnchor.constraint(equalTo: pswBorderView.bottomAnchor, constant: 35),
            rememberLabel.centerXAnchor.constraint(equalTo: checkboxButton.centerXAnchor, constant: 70)
        ])
        
        btmView.addSubview(dontLabel)
        dontLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dontLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dontLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60)
        ])
        
        btmView.addSubview(singUpButton)
        singUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            singUpButton.centerXAnchor.constraint(equalTo: dontLabel.centerXAnchor, constant: 100),
            singUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -54)
        ])
   }
    
    
    @objc func singIn(_ sender: UIButton) {
        
             var flag = false
             if idTextField.text?.isEmpty ?? true {
                 idTextField.layer.borderColor = UIColor.red.cgColor
                 idTextField.layer.borderWidth = 1
                 idTextField.placeholder = "Fill the information"
             } else {
                 idTextField.layer.borderColor = UIColor.white.cgColor
                 flag = true
             }
             
             if pswTextField.text?.isEmpty ?? true {
                 pswTextField.layer.borderColor = UIColor.red.cgColor
                 pswTextField.layer.borderWidth = 1
                 pswTextField.placeholder = "Fill the information"

             } else {
                 pswTextField.layer.borderColor = UIColor.white.cgColor
                 flag = true
             }
             
             if flag {
                 let vc = self.storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
                 present(vc, animated: true)
             }
        
    }
    
    @objc func setCheckbox (_sender: UIButton) {
        if !isSelected {
            checkboxButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
            isSelected = true
        } else {
            checkboxButton.setImage(nil, for: .normal)
            isSelected = false
        }
    }

    
    
}


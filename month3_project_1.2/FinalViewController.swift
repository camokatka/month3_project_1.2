
import UIKit

class FinalViewController: UIViewController {

    private let sucessImage = UIImageView(image: UIImage(named: "success_logo"))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        
    }
    
    private func initUI() {
        
        view.backgroundColor = UIColor(red: 0.282, green: 0.573, blue: 0.655, alpha: 1)
        
        view.addSubview(sucessImage)
        sucessImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sucessImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sucessImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }

}

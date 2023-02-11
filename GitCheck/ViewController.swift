// 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

import UIKit

class ViewController: UIViewController {
    var bool = true
    let myButton: UIButton = {
        let b = UIButton(type: .system)
        b.backgroundColor = .black
        b.tintColor = .white
        b.setTitle("White", for: .normal)
        b.layer.cornerRadius = 10
        b.layer.masksToBounds = true
        b.titleLabel?.font = .boldSystemFont(ofSize: 15)
        b.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        return b
    }()
    @objc private func buttonAction(_ b: UIButton) {
        bool = !bool
        if bool {
            self.view.backgroundColor = .white
            b.backgroundColor = .black
            b.tintColor = .white
            b.setTitle("White", for: .normal)
        } else {
            self.view.backgroundColor = .black
            b.backgroundColor = .white
            b.tintColor = .black
            b.setTitle("Black", for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonFrame(myButton)
    }
    
    private func buttonFrame(_ b: UIButton) {
        self.view.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            b.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            b.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            b.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            b.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    // MARK: add new Button
    
}


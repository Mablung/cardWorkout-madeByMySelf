//
//  WhoAmIVC.swift
//  cardWorkout-madeByMySelf
//
//  Created by Nurettin Berke Demirel on 27.05.2025.
//

import UIKit

class WhoAmIVC: UIViewController {
    
    let photoArea = UIImageView()
    let bioArea = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configurePhotoArea()
        configureBioArea()
        
    }
    
    
    func configurePhotoArea(){
       view.addSubview(photoArea)
       photoArea.translatesAutoresizingMaskIntoConstraints = false
       photoArea.image = UIImage(named: "profilePhotoTransparent")
        
        NSLayoutConstraint.activate([
       photoArea.centerXAnchor.constraint(equalTo: view.centerXAnchor),
       photoArea.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150)
            
        ])
    }
    
    func configureBioArea(){
        view.addSubview(bioArea)
        let fullText = "Hi. Welcome to the first step of an adventure that I know will eventually become one of the best. I don't know when you arrived, but if there are other things on my profile, you should definitely check them out. Ciao! \n\nLinkedIn: NurettinBerkeDemirel"
        let linkText = "LinkedIn: NurettinBerkeDemirel"
        let attributedString = NSMutableAttributedString(string: fullText)
        
        if let linkRange = fullText.range(of: linkText) {
            let nsRange = NSRange(linkRange, in: fullText)
            attributedString.addAttribute(.link, value: "https://www.linkedin.com/in/nurettinberkedemirel/", range: nsRange)
        }
        bioArea.attributedText = attributedString
        bioArea.translatesAutoresizingMaskIntoConstraints = false
        bioArea.textAlignment = .center
        bioArea.textColor = .systemRed
        bioArea.font = .systemFont(ofSize: 17, weight: .regular)
        bioArea.isEditable = false
        bioArea.isScrollEnabled = false
        bioArea.textContainerInset = .zero
        bioArea.textContainer.lineFragmentPadding = 0
        
        
        NSLayoutConstraint.activate([
            bioArea.widthAnchor.constraint(equalToConstant: 300),
            bioArea.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bioArea.topAnchor.constraint(equalTo: photoArea.bottomAnchor, constant: 20)
        ])
        
        
    }
}

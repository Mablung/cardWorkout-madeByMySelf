//
//  CWButton.swift
//  cardWorkout-madeByMySelf
//
//  Created by Nurettin Berke Demirel on 26.05.2025.
//

import UIKit

class CWButton: UIButton {
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor,title: String,cornerStyle: Configuration.CornerStyle){
        super.init(frame: .zero)
        
        configuration = .filled()
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = cornerStyle
        
        setTitle(title, for: .normal)
        
        configure()

    }
    
    
    func configure() {
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.setTitleColor(.white, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        }
}






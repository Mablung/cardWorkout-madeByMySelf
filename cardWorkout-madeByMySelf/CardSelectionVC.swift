//
//  CardSelectionVC.swift
//  cardWorkout-madeByMySelf
//
//  Created by Nurettin Berke Demirel on 26.05.2025.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardArea = UIImageView()
    
    let stopButton = CWButton(color: .red, title: "Stop", cornerStyle: .capsule)
    let rulesButton = CWButton(color: .blue, title: "Rules", cornerStyle: .medium)
    let restartButton = CWButton(color: .green, title: "Restart", cornerStyle: .medium)
    
    let cardDeck: [UIImage] = Deck.allValues
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    
    func configureUI (){
        
        
        view.backgroundColor = .systemBackground
        configureCardArea()
        configureStopButton()
        
    }
    
    func configureCardArea() {
        view.addSubview(cardArea)
        
        cardArea.translatesAutoresizingMaskIntoConstraints = false
        cardArea.image =  UIImage(named:"AS")
        
        NSLayoutConstraint.activate([
            cardArea.widthAnchor.constraint(equalToConstant: 250),
            cardArea.heightAnchor.constraint(equalToConstant: 350),
            cardArea.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardArea.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -75)

        ])
    }
    
    func configureStopButton(){
        view.addSubview(stopButton)
        
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardArea.bottomAnchor, constant: 30)
            
            
            
           
            
            
        ])
    }
    
    
}

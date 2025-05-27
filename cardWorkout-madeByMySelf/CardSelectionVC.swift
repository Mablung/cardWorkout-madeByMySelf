//
//  CardSelectionVC.swift
//  cardWorkout-madeByMySelf
//
//  Created by Nurettin Berke Demirel on 26.05.2025.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardArea = UIImageView()
    
    let stopButton = CWButton(color: .systemRed, title: "Stop", cornerStyle: .capsule)
    let rulesButton = CWButton(color: .systemBlue, title: "Rules", cornerStyle: .medium)
    let restartButton = CWButton(color: .systemGreen, title: "Restart", cornerStyle: .medium)
    let whoAmIButton = CWButton(color: .systemOrange, title: "Who Am I?", cornerStyle: .capsule)
    
    let cardDeck: [UIImage] = Deck.allValues
    
    var time: Timer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        activateTimer()
        
    }
    
    func activateTimer(){
        
        time = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(changeCard), userInfo: nil, repeats: true)
    }
    
    @objc func changeCard(){
        cardArea.image = cardDeck.randomElement()
        
    }
    
    @objc func stopTimer(){
        time?.invalidate( )
    }
    
    @objc func restartTimer(){
        
        time?.invalidate( )
        activateTimer( )
        
    }
    
    @objc func presentRulesVC(){
        
        present(RulesVC(), animated: true)
    }
    
    @objc func presentWhoAmIVC(){
        
        present(WhoAmIVC(), animated: true)
    }
    
    
    func configureUI (){
        view.backgroundColor = .systemBackground
        configureCardArea()
        configureStopButton()
        configureRestartButton()
        configureRulesButton()
        configureWhoAmIButton()
    }
    
    func configureCardArea(){
        view.addSubview(cardArea)
        cardArea.translatesAutoresizingMaskIntoConstraints = false
        cardArea.image = UIImage(named: "AS")
        
        
        NSLayoutConstraint.activate([
        cardArea.widthAnchor.constraint(equalToConstant: 250),
        cardArea.heightAnchor.constraint(equalToConstant: 350),
        cardArea.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        cardArea.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
            
        ])
    }
    
    func configureStopButton(){
        view.addSubview(stopButton)
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardArea.bottomAnchor, constant: 30)
        ])
    }
    
    func configureRestartButton(){
        view.addSubview(restartButton)
        restartButton.addTarget(self, action: #selector(restartTimer), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            restartButton.widthAnchor.constraint(equalToConstant: 110),
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 10)
        ])
    }
    
    func configureRulesButton(){
        view.addSubview(rulesButton)
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 110),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 10),
            
            
        ])
    }
    
    func configureWhoAmIButton(){
        view.addSubview(whoAmIButton)
        whoAmIButton.addTarget(self, action: #selector(presentWhoAmIVC), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            whoAmIButton.widthAnchor.constraint(equalToConstant: 260),
            whoAmIButton.heightAnchor.constraint(equalToConstant: 50),
            whoAmIButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            whoAmIButton.topAnchor.constraint(equalTo: restartButton.bottomAnchor, constant: 30)
        
        ])
        
    }
    
}

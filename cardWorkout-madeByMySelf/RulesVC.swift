//
//  RulesVC.swift
//  cardWorkout-madeByMySelf
//
//  Created by Nurettin Berke Demirel on 27.05.2025.
//

import UIKit

class RulesVC: UIViewController {
    
    var titleLabel = UILabel()
    var rulesLabel = UILabel()
    var exerciseLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()

    }
    

    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.text = "Rules"

    
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you should do. \n\nJ = 10, Q = 11, K = 12, A = 13"
        rulesLabel.textColor = .red
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            rulesLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: -30),
        ])
            
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Burpees \n♣️ = Mountain Climbers \n♥️ = Push-ups \n♦️ = Squats\n\nRemember the goal is to challenge yourself!"
        exerciseLabel.textColor = .white
        exerciseLabel.textAlignment = .left
        exerciseLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        exerciseLabel.lineBreakMode = .byWordWrapping
        exerciseLabel.numberOfLines = 0
        
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 50),
            exerciseLabel.leadingAnchor.constraint(equalTo: rulesLabel.leadingAnchor, constant: 30),
            exerciseLabel.trailingAnchor.constraint(equalTo: rulesLabel.trailingAnchor, constant: -30)
           
            
            
            ])
    }


}

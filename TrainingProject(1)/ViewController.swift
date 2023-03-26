//
//  ViewController.swift
//  TrainingProject(1)
//
//  Created by Alex Pavlyuk on 3/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var greetingLabel: UILabel!
    
    @IBOutlet var greetingButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
        
        // Programatical Button
        
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .orange
        view.addSubview(button)
        
        button.frame = CGRect(x: 140, y: 140, width: 150, height: 50)
        button.layer.cornerRadius = 18
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        // view.backgroundColor = .green
        let color = UIColor(red: 0.5, green: 0.2, blue: 0.8, alpha: 1.0)
        view.backgroundColor = color
        
    }
    // System Button
    
    @IBAction func greetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        if greetingLabel.isHidden {
            greetingButton.setTitle("ON & OFF", for: .normal)
            
            
        }
        
    }
}
// 

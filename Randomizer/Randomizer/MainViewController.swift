//
//  ViewController.swift
//  Randomizer
//
//  Created by Владимир Макаров on 29.11.2021.
//

import UIKit

protocol SetValue {
    func setValue(minimumvalue: String?, maximumvalue: String?)
}


class MainViewController: UIViewController {
    
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
        
        minimumValueLabel.text = "0"
        maximumValueLabel.text = "100"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minimumValueLabel.text
        settingsVC.maximumValue = maximumValueLabel.text
        settingsVC.delegate = self
    }
    
    
    @IBAction func getRandomNumberButtonTapped() {
    }
}

extension MainViewController: SetValue {
    func setValue(minimumvalue: String?, maximumvalue: String?) {
        minimumValueLabel.text = minimumvalue
        maximumValueLabel.text = maximumvalue
    }
}




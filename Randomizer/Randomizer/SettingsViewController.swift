//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Владимир Макаров on 29.11.2021.
//
import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    

    var delegate: SetValue!
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
    
    @IBAction func saveAction() {
        view.endEditing(true)
        delegate.setValue(minimumvalue: minimumValueTF.text ?? "0", maximumvalue: maximumValueTF.text ?? "100")
        dismiss(animated: true)
    }
    
    @IBAction func cancelAction() {
        dismiss(animated: true, completion: nil)
    }
}



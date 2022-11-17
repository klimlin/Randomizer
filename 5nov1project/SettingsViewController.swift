//
//  SettingsViewController.swift
//  5nov1project
//
//  Created by MAcbook on 06.11.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimunValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maximumValueTF.text = maximumValue
        minimunValueTF.text = minimumValue
        
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
}

//
//  ViewController.swift
//  5nov1project
//
//  Created by MAcbook on 05.11.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var randomNumberLabel: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minValueLabel.text
        settingsVC.maximumValue = maxValueLabel.text
    }

    
    @IBAction func getRandomButtonTapped() {
        let minNumber = Int(minValueLabel.text ?? "") ?? 0
        let maxNumber = Int(maxValueLabel.text ?? "") ?? 100
        
        randomNumberLabel.text = Int.random(in: minNumber...maxNumber).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minValueLabel.text = settingsVC.minimunValueTF.text
        maxValueLabel.text = settingsVC.maximumValueTF.text
    }
    
}


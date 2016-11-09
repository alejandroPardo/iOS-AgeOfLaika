//
//  ViewController.swift
//  Age Of Laika
//
//  Created by Alejandro Pardo on 09/11/2016.
//  Copyright © 2016 tec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(_ sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text!
        let convertedAge = Int(stringFromTextField)! * 7
        
        dogYearsLabel.text = "\(convertedAge) Dog Years"
        
        dogYearsLabel.isHidden = false
        
        enterHumanYearsTextField.resignFirstResponder()
    }
    @IBAction func convertToRealDogYearsButtonPressed(_ sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text!
        let doubleFromTextField = Double(stringFromTextField)!
        
        var realDogYears: Double
        
        if (doubleFromTextField > 2){
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        } else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.text = "\(realDogYears) Real Dog Years"
        
        dogYearsLabel.isHidden = false
        
        enterHumanYearsTextField.resignFirstResponder()
    }
}


// Created on: Nov 2018
// Created by: Brody MacNeil
// Created for: ICS3U
// This program tells the difference between 2 strings
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionLabel = UILabel()
    let string1TextField = UITextField()
    let string2TextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    
    
    @objc func showWords() {
        // make variables for the strings
        if let stringOne : String = String(string1TextField.text!),  let stringTwo : String = String(string2TextField.text!) {
            // ask other function if the words are the same or not
            if checkWords(stringOneSent: stringOne, stringTwoSent: stringTwo) == true {
                answerLabel.text = "They are the same."
            } else {
                answerLabel.text = "They are different."
            }
        }
    }
    
    @objc func checkWords(stringOneSent : String, stringTwoSent: String) -> Bool{
        // check if the strings are the same
        if stringOneSent.uppercased() == stringTwoSent.uppercased() {
            return true
        } else {
            return false
        }
    }
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        let string1Sent = string1TextField.text
        let string2Sent = string2TextField.text
        
        instructionLabel.text = "Enter two words and computer will tell you if they are the same"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        string1TextField.borderStyle = UITextField.BorderStyle.roundedRect
        string1TextField.placeholder = "word 1"
        view.addSubview(string1TextField)
        string1TextField.translatesAutoresizingMaskIntoConstraints = false
        string1TextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        string1TextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        string2TextField.borderStyle = UITextField.BorderStyle.roundedRect
        string2TextField.placeholder = "word 2"
        view.addSubview(string2TextField)
        string2TextField.translatesAutoresizingMaskIntoConstraints = false
        string2TextField.topAnchor.constraint(equalTo: string1TextField.bottomAnchor, constant: 20).isActive = true
        string2TextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Check", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(showWords), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: string2TextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

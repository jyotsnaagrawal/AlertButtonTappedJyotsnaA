//
//  ViewController.swift
//  AlertButtonTappedJyotsnaA
//
//  Created by student on 2/25/24.
//

import UIKit
class ViewController: UIViewController {
@IBOutlet var labelResult: UILabel!
override func viewDidLoad() {
super.viewDidLoad()
labelResult.numberOfLines = 0
// Do any additional setup after loading the view, typically from a nib.
}
    
@IBAction func buttonTapped(_ sender: UIButton) {
let alert = UIAlertController(title: "Whats Your Name", message: "Enter Your Name", preferredStyle: .alert)
    alert.addTextField(configurationHandler: {(textField) in textField.placeholder = "Enter Your Name Here"; textField.isSecureTextEntry = true
})
let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
let savedText = alert.textFields![0] as UITextField
self.labelResult.text = savedText.text })
        alert.addAction(okAction)
self.present(alert, animated: true, completion: nil) }
}

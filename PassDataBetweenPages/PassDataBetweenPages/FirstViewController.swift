//
//  ViewController.swift
//  PassDataBetweenPages
//
//  Created by Nurgul on 31.05.2022.
//  Copyright © 2022 Nurgul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstValue: UILabel!
    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onClickSecond(_ sender: UIButton) {
        guard let SecondController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        SecondController.secondVal = emailField.text ?? ""
        //CallBack
        //SecondController.emailCompletion = { newValue in self.firstValue.text = newValue}
        SecondController.delegate = self
        navigationController?.pushViewController(SecondController, animated: true)
    }
    
}

//MARK: -EmailDelegate
extension FirstViewController :EmailDelegate {
    func email(_ input: String?) {
        firstValue.text = input ?? ""
    }
}

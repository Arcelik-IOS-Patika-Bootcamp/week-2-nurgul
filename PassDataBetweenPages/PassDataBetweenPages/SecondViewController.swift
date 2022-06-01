//
//  SecondViewController.swift
//  PassDataBetweenPages
//
//  Created by Nurgul on 31.05.2022.
//  Copyright © 2022 Nurgul. All rights reserved.
//

import UIKit

//typealias EmailHandler = (String?) -> Void
//typealias AgeHandler = (Date) -> Void

protocol EmailDelegate {
    func email(_ input: String?)
}
class SecondViewController: UIViewController {
    
    //MARK: - Variables
    
    var secondVal:String = "" //Empty
    //var emailCompletion:EmailHandler? = nil
    var delegate: EmailDelegate!
    
    //MARK: -IBOutlets
    
    @IBOutlet weak var SecondEmailField: UITextField!
    @IBOutlet weak var secondValue: UILabel!
    
    //MARK: -View Controller Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondValue.text = secondVal
    }
    

    @IBAction func onClickFirst(_ sender: UIButton) {
        //emailCompletion?(SecondEmailField.text ?? "")
        self.delegate.email(SecondEmailField.text ?? "")
        navigationController?.popViewController(animated: true)
    }
    

}

//
//  ViewController.swift
//  Login-Actividad-7-2
//
//  Created by Alumno on 11/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
            segue.destination.view.backgroundColor = .red
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
            segue.destination.view.backgroundColor = .red
        } else {
            segue.destination.navigationItem.title = usernameTxt.text
            segue.destination.view.backgroundColor = .green
        }
        
    }

    @IBAction func forgotUsernameAction(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
}


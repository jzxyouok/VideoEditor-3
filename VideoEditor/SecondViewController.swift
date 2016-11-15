//
//  SecondViewController.swift
//  VideoEditor
//
//  Created by Елена Яновская on 12/11/2016.
//  Copyright © 2016 Елена Яновская. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var imageExample1: UIImageView!
    @IBOutlet weak var imageExample2: UIImageView!
    @IBOutlet weak var imageExample3: UIImageView!
    @IBOutlet weak var imageExample4: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        textField.becomeFirstResponder()
        
        
        
        imageExample1.image = UIImage(named: "2.jpg")
        imageExample2.image = UIImage(named: "1.jpeg")
        imageExample3.image = UIImage(named: "3.jpg")
        imageExample4.image = UIImage(named: "4.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

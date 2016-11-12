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
    @IBOutlet weak var viewAllButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        textField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

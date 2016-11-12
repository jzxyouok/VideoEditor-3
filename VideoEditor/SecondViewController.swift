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
        
        let image1: UIImage = UIImage (named: "1.jpeg")!
        imageExample1 = UIImageView(image: image1)
        imageExample1!.frame = CGRect(x: 0, y: 0, width: 166, height: 99)
        self.view.addSubview(imageExample1!)
        
        let image2: UIImage = UIImage (named: "2.jpg")!
        imageExample2 = UIImageView(image: image2)
        imageExample2!.frame = CGRect(x: 0, y: 0, width: 166, height: 99)
        self.view.addSubview(imageExample2!)
        
        let image3: UIImage = UIImage (named: "3.jpg")!
        imageExample3 = UIImageView(image: image3)
        imageExample3!.frame = CGRect(x: 0, y: 0, width: 166, height: 99)
        self.view.addSubview(imageExample3!)
        
        
        let image4: UIImage = UIImage (named: "4.jpg")!
        imageExample4 = UIImageView(image: image4)
        imageExample4!.frame = CGRect(x: 0, y: 0, width: 166, height: 99)
        self.view.addSubview(imageExample4!)
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

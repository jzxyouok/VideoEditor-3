//
//  ViewController.swift
//  VideoEditor
//
//  Created by Елена Яновская on 12/11/2016.
//  Copyright © 2016 Елена Яновская. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textFieldButton: UIButton!
    @IBOutlet weak var myScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldButton.layer.cornerRadius = 2
        textFieldButton.layer.borderWidth = 1
        textFieldButton.layer.borderColor = UIColor.gray.cgColor
        
        
        
        let myImages = ["1.jpeg", "2.jpg", "3.jpg", "4.png"]
        let imageWidth: CGFloat = 160
        let imageHeight: CGFloat = 100
        var xPosition:CGFloat = 0
        var scrollViewContentSize:CGFloat=0
        
        for index in 0 ..< myImages.count
        {
            let myImage:UIImage = UIImage(named: myImages[index])!
            let myImageView: UIImageView = UIImageView()
            myImageView.image = myImage
            //myImageView.contentMode = UIViewContentMode.scaleAspectFit
            
            myImageView.frame.size.width = imageWidth
            myImageView.frame.size.height = imageHeight
            myImageView.frame.origin.y = 0
            //myImageView.center = self.view.center
            myImageView.frame.origin.x = xPosition
            
            myScrollView.addSubview(myImageView)
           let spacer: CGFloat = 20
           
            
            xPosition+=imageWidth + spacer
            scrollViewContentSize+=imageWidth + spacer
            
            myScrollView.contentSize = CGSize(width: scrollViewContentSize, height: imageHeight)
        }
    }

    @IBAction func buttonTapped(_ sender: Any?) {
        performSegue(withIdentifier: "show", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


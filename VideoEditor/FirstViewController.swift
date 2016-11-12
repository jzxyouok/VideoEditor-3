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
    @IBOutlet weak var dataView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldButton.layer.cornerRadius = 2
        textFieldButton.layer.borderWidth = 1
        textFieldButton.layer.borderColor = UIColor.gray.cgColor
        
        let myImages = ["1.jpeg", "2.jpg", "3.jpg", "4.jpg"]
        let imageWidth: CGFloat = 160
        let imageHeight: CGFloat = 100
        var xPosition:CGFloat = 0
        var scrollViewContentSize:CGFloat=0
        
        for index in 0 ..< myImages.count
        {
            let myImage:UIImage = UIImage(named: myImages[index])!
            let myImageView: UIImageView = UIImageView()
            myImageView.image = myImage
            myImageView.contentMode = UIViewContentMode.scaleAspectFit
            
            myImageView.frame.size.width = imageWidth
            myImageView.frame.size.height = imageHeight
            myImageView.frame.origin.y = 10
            myImageView.center = self.view.center
            myImageView.frame.origin.x = xPosition
            
            dataView.addSubview(myImageView)
            let spacer: CGFloat = 10
            
            xPosition+=imageWidth + spacer
            scrollViewContentSize+=imageWidth + spacer
            
            dataView.contentSize = CGSize(width: scrollViewContentSize, height: imageHeight)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


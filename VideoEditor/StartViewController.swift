//
//  ViewController.swift
//  VideoEditor
//
//  Created by Елена Яновская on 12/11/2016.
//  Copyright © 2016 Елена Яновская. All rights reserved.
//
import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var textFieldButton: UIButton!
    @IBOutlet weak var myScrollView: UIScrollView!

    var myImages : [UIImage] = [
        UIImage(named: "1.jpeg")!,
        UIImage(named: "2.jpg")!,
        UIImage(named: "3.jpg")!,
        UIImage(named: "4.png")!]


    var myImageView: [ScrollImageView] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton (frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        button.backgroundColor = UIColor.green
        button.setTitle("+", for: .normal)
        button.addTarget(self, action: #selector(addToScroll(button:)), for: .touchDown)
        view.addSubview(button)


        textFieldButton.layer.cornerRadius = 2
        textFieldButton.layer.borderWidth = 1
        textFieldButton.layer.borderColor = UIColor.gray.cgColor


        let imageWidth: CGFloat = 160
        let imageHeight: CGFloat = 100
        var xPosition:CGFloat = +0
        var scrollViewContentSize:CGFloat=0


        for index in 0 ..< myImages.count
        {

            let image: UIImage? = myImages[index]
            myImageView.append(ScrollImageView(frame: CGRect(x: xPosition, y: 0, width: imageWidth, height: imageHeight)))

            myImageView[index].image = image

            self.myScrollView.addSubview(myImageView[index])

            myImageView[index].isUserInteractionEnabled = true

            let spacer: CGFloat = 20


            xPosition+=imageWidth + spacer
            scrollViewContentSize+=imageWidth + spacer

            myScrollView.contentSize = CGSize(width: scrollViewContentSize - spacer, height: imageHeight)
        }

    }

    var scrollViewContentSize : CGFloat = 720
    var xPosition : CGFloat = 540
    func addToScroll (button: UIButton) {
        
        let imageWidth : CGFloat = 160
        let imageHeight :CGFloat = 100

        let spacer :CGFloat = 20

        scrollViewContentSize += imageWidth + spacer
xPosition += imageWidth + spacer
        myImages.insert(UIImage(named: "2.jpeg")!, at: 0)
        let imageViewToAdd = UIImageView(image: myImages[0])
        imageViewToAdd.frame = CGRect(x: xPosition, y: 0, width: imageWidth, height: imageHeight)
        self.myScrollView.addSubview(imageViewToAdd)
        self.myScrollView.contentSize = CGSize(width: scrollViewContentSize - spacer, height: imageHeight)

        print("it tapped")
        //print(myImages[0], myImages[1], myImages.count)

    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func buttonTapped(_ sender: Any?) {
        performSegue(withIdentifier: "show", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

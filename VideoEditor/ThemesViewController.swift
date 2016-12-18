
//
//  SettingsViewController.swift
//  VideoEditor
//
//  Created by Елена Яновская on 21/11/2016.
//  Copyright © 2016 Елена Яновская. All rights reserved.
//

import UIKit

class ThemesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var previewImage: UIImageView!
    @IBOutlet weak var allThemeExamples: UITableView!
    
    var dic: Dictionary<UIImage, UIImage> = [UIImage(named: "1.jpeg")!: UIImage (named: "2.jpg")!, UIImage(named: "3.jpg")!: UIImage (named: "4.png")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let indexPath = IndexPath(row: 0, section: 0)
        allThemeExamples.selectRow(at: indexPath, animated: false, scrollPosition: .middle)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCellTheme
        let value = Array(self.dic.values)[indexPath.row]
        cell.picture.image = value
        
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let key = Array(self.dic.keys)[indexPath.row]
        self.previewImage.image = key
        }
//        if indexPath.row == 2 {
//            previewImage.image = UIImage(named: "3.jpg")!
//        }
//        if indexPath.row == 3 {
//            previewImage.image = UIImage(named: "4.png")!
//        }
    }



class CustomCellTheme: UITableViewCell {
   
    @IBOutlet weak var textTheme: UITextView!
    
    
    @IBOutlet weak var picture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


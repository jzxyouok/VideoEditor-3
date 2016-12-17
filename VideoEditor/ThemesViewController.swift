
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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCellTheme
        
        return cell
    }

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


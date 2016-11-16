//
//  IntroPageViewController.swift
//  VideoEditor
//
//  Created by Мария Коровина on 16.11.16.
//  Copyright © 2016 Елена Яновская. All rights reserved.
//

import UIKit

class IntroPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var intro = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.dataSource = self
        
        let intro1: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "intro1ID")
        let intro2: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "intro2ID")
        let intro3: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "intro3ID")
        
        intro.append(intro1)
        intro.append(intro2)
        intro.append(intro3)
        
        setViewControllers([intro1], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex = intro.index(of: viewController)!
        let previousIndex = currentIndex - 1
        if previousIndex < 0 {
            return nil
        }
        return intro[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex = intro.index(of: viewController)!
        let nextIndex = currentIndex + 1
        if nextIndex > intro.count - 1{
            return nil
        }
        return intro[nextIndex]
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return intro.count
    }

}

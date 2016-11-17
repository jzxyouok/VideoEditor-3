//
//  InitViewController.swift
//  VideoEditor
//
//  Created by Мария Коровина on 16.11.16.
//  Copyright © 2016 Елена Яновская. All rights reserved.
//

import UIKit
import paper_onboarding

class InitViewController: UIViewController,PaperOnboardingDataSource,PaperOnboardingDelegate {
    /**
     Tells the delegate that the paperOnbording start scrolling.
     
     - parameter index: An curretn index item
     */
    public func onboardingWillTransitonToIndex(_ index: Int) {
        //
    }

    func onboardingDidTransitonToIndex(_ index: Int){
//
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let onboarding = PaperOnboarding(itemsCount: 3)
        onboarding.dataSource = self
        onboarding.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(onboarding)

        // add constraints
        for attribute: NSLayoutAttribute in [.left, .right, .top, .bottom] {
            let constraint = NSLayoutConstraint(item: onboarding,
                                                attribute: attribute,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: attribute,
                                                multiplier: 1,
                                                constant: 0)
            view.addConstraint(constraint)
        }
    }

    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        return [
            ("1", "Title", "Description text", "IconName1", UIColor.blue, UIColor.red, UIColor.black, UIFont.systemFont(ofSize: 13), UIFont.systemFont(ofSize: 13)),
            ("2", "Title", "Description text", "IconName1",  UIColor.black, UIColor.black, UIColor.black, UIFont.systemFont(ofSize: 13), UIFont.systemFont(ofSize: 13)),
            ("3", "Title", "Description text", "IconName1",  UIColor.black, UIColor.black, UIColor.black, UIFont.systemFont(ofSize: 13),UIFont.systemFont(ofSize: 13))
            ][index]
    }

    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
       //
    }

    func onboardingItemsCount() -> Int {
        return 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

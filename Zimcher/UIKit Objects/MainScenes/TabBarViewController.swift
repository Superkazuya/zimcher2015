//
//  TabBarViewController.swift
//  SwiftPort
//
//  Created by Weiyu Huang on 11/13/15.
//  Copyright © 2015 Kappa. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //UITabBar.appearance().selectionIndicatorImage = UIImage.imageFromColorAndSize(UIColor.whiteColor(), size: CGSizeMake(200, tabBar.frame.size.height))
        
        UITabBar.appearance().tintColor = CONSTANT.COLORSCHEME_DEFAULT.TAB_BAR.TINT
        UITabBar.appearance().barTintColor = CONSTANT.COLORSCHEME_DEFAULT.TAB_BAR.BAR_TINT
    }


}

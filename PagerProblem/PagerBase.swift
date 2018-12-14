//
//  PagerBase.swift
//  PagerProblem
//
//  Created by Farhan Arshad on 14/12/2018.
//  Copyright © 2018 Me. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class PagerBase: ButtonBarPagerTabStripViewController{

    var viewOne: TheProblemView?
    var viewTwo: TheProblemView?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewOne = storyboard.instantiateViewController(withIdentifier :"SBIDTheProblemView") as? TheProblemView
        viewOne?.heading = "View One"
        viewTwo = storyboard.instantiateViewController(withIdentifier :"SBIDTheProblemView") as? TheProblemView
        viewTwo?.heading = "View Two"
        
        let pages: [UIViewController] = [viewOne!, viewTwo!]

        //return [topHobbies, topUsers]
        return pages
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

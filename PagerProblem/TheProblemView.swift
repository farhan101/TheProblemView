//
//  TheProblemView.swift
//  PagerProblem
//
//  Created by Farhan Arshad on 14/12/2018.
//  Copyright © 2018 Me. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TheProblemView: UIViewController, IndicatorInfoProvider {

    var heading: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: heading)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //HELP: https://stackoverflow.com/questions/53782932/xlpagertabstrip-dynamically-adding-subviews-to-tabs-view-controllers-wouldnt
        
        //let vu = ViewToAdd(frame: self.view.frame, yFactor: 2.0)
        let vu = ViewToAdd(frame: self.view.bounds, yFactor: 2.0)
        self.view.addSubview(vu)
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

//
//  DetailViewController.swift
//  DemoReview
//
//  Created by Cao Thắng on 9/21/16.
//  Copyright © 2016 Cao Thắng. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var labelOverView: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewItem: UIImageView!
    var myModel: MyModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadDaTa()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension DetailViewController {
    func loadDaTa() {
        imageViewItem.image = myModel?.image
        labelTitle.text = myModel?.title
        labelDate.text = myModel?.time!
        labelOverView.text = myModel?.overview!
    }
}

//
//  MyViewController.swift
//  DemoReview
//
//  Created by Cao Thắng on 9/21/16.
//  Copyright © 2016 Cao Thắng. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    var items: [MyModel] = []
    lazy var searchBars:UISearchBar = UISearchBar()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initSearchBar()
        initTableView()
        initDataForItems()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let cell = sender as! TableViewCell
        if let indexPath = tableView.indexPathForCell(cell) {
            let controller = segue.destinationViewController as! DetailViewController
            controller.myModel = self.items[indexPath.row]
        }
    }
    
}
//MARK: TableView
extension MyViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell") as! TableViewCell
        let item = items[indexPath.row]
        cell.item = item
        return cell
    }
    func initTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}
extension MyViewController {
    func initDataForItems() {
        for i in 1...5 {
            let item = MyModel()
            item.title = "Index : \(i)"
            item.time = "13-02-2016"
            item.overview = "Test data dadads dadsa  dads aada ds ad ad asd ad ad ad ad a thandd asda da dda d da dad dadasd da sd ad adasd ad ad a ada dad ad dsd a da da\(i)"
            items.append(item)
        }
        self.tableView.reloadData()
    }
}
//MARK: SearchBar
extension MyViewController : UISearchBarDelegate , UISearchDisplayDelegate{
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchBars.showsCancelButton = true
    }
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchBar.endEditing(true)
        searchBars.showsCancelButton = false
    }
    func initSearchBar(){
        searchBars.showsCancelButton = false
        searchBars.placeholder = "Enter your search here"
        searchBars.delegate = self
        self.navigationItem.titleView = searchBars
    }
}

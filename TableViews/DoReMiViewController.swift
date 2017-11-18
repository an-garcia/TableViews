//
//  DoReMiViewController.swift
//  TableViews
//
//  Created by xengar on 2017-11-18.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class DoReMiViewController: UIViewController, UITableViewDataSource {

    // MARK: Properties
    
    // Use this string property as your reuse identifier,
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "MyCellReuseIdentifier"
    
    // Choose some data to show in your table
    
    let model = [
        ["text" : "Do", "detail" : "Documents falling from the sky."],
        ["text" : "Re", "detail" : "Releasing people from the hospital."],
        ["text" : "Mi", "detail" : "Mission impossible 3."],
        ["text" : "Fa", "detail" : "Favorites things to do."],
        ["text" : "So", "detail" : "So, you got some money?"],
        ["text" : "La", "detail" : "Latter, I will go for some cake."],
        ["text" : "Ti", "detail" : "Tim Hortons is open until midnight."]
    ]
    
    // MARK: UITableViewDataSource
    
    // Add the two essential table data source methods here
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: Implement method to return the correct number of rows.
        return self.model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: Implement method to return cell with the correct reuseidentifier and populated with the correct data.
        let cell =  tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier)!
        let dictionary = self.model[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = dictionary["text"]
        cell.detailTextLabel?.text = dictionary["detail"]
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}

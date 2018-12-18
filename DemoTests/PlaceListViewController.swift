//
//  PlaceListViewController.swift
//  DemoTests
//
//  Created by Jakkapan Thongkum on 18/12/2561 BE.
//  Copyright © 2561 Jakkapan Thongkum. All rights reserved.
//

import UIKit

class PlaceListViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = PlaceListViewModel(dataFetcher: MockPlaceDataFetcher())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        headerLabel.text = viewModel.title
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PlaceTableCell
        let cellDataModel = viewModel.tableCellDataModelForIndexPath(indexPath)
        cell.configureCell(model: cellDataModel)
        return cell
    }

}

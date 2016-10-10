
import UIKit
import SwiftyJSON
import Alamofire

class ArticleViewController: UIViewController {
    
    private let viewmodel = ArticleViewModel()
    private let apiManager: APIManager = APIManager.sharedInstance
    private var articles: [Article]? {
        get {
            return viewmodel.articles
        }
        set(newValue) {
            viewmodel.articles = newValue
        }
    }
    
    //    @IBOutlet weak var tableView: UITableView!
  
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MARBLE"
        
        load()
        initTableView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func showErrorAlert(message: String, completion: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: "MARBLE",
                                      message: message,
                                      preferredStyle: UIAlertControllerStyle.Alert
        )
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: completion))
        presentViewController(alert, animated: true, completion: nil)
    }
    
    // initial loading when this app is opend
    private func load() {
        let params: [String: AnyObject] = [
            "search_type": "category",
            "limit": 10,
            //            "category_id": categoryId
        ]
        viewmodel.fetchArticleList(params)
            .onSuccess { [weak self] data in
                self?.articles = data.1
                self?.tableView.reloadData()
            }
            .onFailure { [weak self] error in
                self?.showErrorAlert(error.localizedDescription, completion: nil)
        }
    }
    
    private func initTableView() {
        tableView.registerNib(UINib(nibName: "ArticleTableViewCell", bundle: nil), forCellReuseIdentifier: "ArticleTableViewCell")
        // dataSource and delegate are connected to this class in the storyboard.
        // tableView.dataSource = self
        // tableView.delegate = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 105.0
        //        tableView.showPullToRefresh = true
        //        tableView.addInfiniteScrollHandler { [weak self] in
        //            self?.load()
        //        }
        
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

extension ArticleViewController: UITableViewDelegate, UITableViewDataSource {
    
    // return the number of tableCells
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles?.count ?? 0
    }
    // draw the tableCells
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: ArticleTableViewCell = tableView.dequeueReusableCellWithIdentifier("ArticleTableViewCell") as! ArticleTableViewCell
        cell.setCell(articles![indexPath.row])
        return cell
    }
    // action when a cell is tapped
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "ArticleDetail", bundle: nil)
        if let next: ArticleDetailViewController = storyboard.instantiateViewControllerWithIdentifier("ArticleDetail") as? ArticleDetailViewController {
            next.article = articles![indexPath.row]
            navigationController?.pushViewController(next, animated: true)
        }
    }
}

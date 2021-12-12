import UIKit

class ViewController: UIViewController {
    let people_names = ["George","Betty","Fran","Joe","Helda","Winifred","Zed","Sara","Jeffy","Abraham","Anna","Melinda"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people_names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = people_names[indexPath.row]
        cell.detailTextLabel?.text = "\(Int.random(in: 5...95)) years old"
        return cell
    }
    
    
}

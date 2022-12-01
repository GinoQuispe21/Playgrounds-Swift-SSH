//
//protocol UITableViewDataSource {
//    func tableView(tableView: UITableView, numberOfRowInSection : Int) -> Int
//    func tableView(tableView: UITable		View, cellForRowAt: Int)
//}
//
//protocol UITableViewDelegate {
//    func tableView(tableView: UITableView, didSelectRowAt: Int)
//}
//
//class UITableView {
//    var dataSource: UITableViewDataSource?
//    var delegate: UITableViewDelegate?
//}
//
//class UIVIiewController {
//    func viewDidLoad(){
//        print("ViewDidLoad")
//    }
//}
//
//// Firs class assign is father, the rest are protocols
//
//class HomeViewController : UIVIiewController{
//
//    let tableView = UITableView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.dataSource = self
//    }
//}
//
//extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
//    func tableView(tableView: UITableView, didSelectRowAt: Int) {
//        <#code#>
//    }
//
//    func tableView(tableView: UITableView, numberOfRowInSection: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(tableView: UITableView, cellForRowAt: Int) {
//        <#code#>
//    }
//}

// Delegate Pattern

//protocol FormDelegate {
//    func didEnter()
//    func didCancel()
//}
//
//class Form {
//
//    var delegate: FormDelegate?
//
//    func present() {
//        print("Form is present")
//    }
//
//    func cancelTapped() {
//        delegate?.didCancel()
//    }
//
//    func enterTapped() {
//        delegate?.didEnter()
//    }
//}
//
//class Main : FormDelegate{
//
//    var form = Form()
//
//    init() {
//        form.delegate = self
//    }
//
//    func didEnter() {
//        print("Login of enter")
//    }
//
//    func didCancel() {
//        print("Lofic of cancel")
//    }
//
//}
//
//class SecondMain : FormDelegate{
//
//    var form = Form()
//
//    init() {
//        form.delegate = self
//    }
//
//    func didEnter() {
//        print("Second Main: Login of enter")
//    }
//
//    func didCancel() {
//        print("Second Main: Lofic of cancel")
//    }
//
//}
//
//let main = Main()
//main.form.present()
//
//
//let
//

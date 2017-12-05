import UIKit 
import PlaygroundSupport

class BlueViewController:UIViewController{
    override func viewDidLoad(){
    super.viewDidLoad()
    view.backgroundColor = .blue
        title = "Blue"
    }
}

class YellowViewController:UIViewController{
    @IBAction func blue(selection:UIBarButtonItem){
    let bvc = BlueViewController()
        navigationController?.pushViewController(bvc, animated: true)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        let blueItem = UIBarButtonItem(title: "Blue", style: .plain, target: self, action: #selector(blue))
        navigationItem.rightBarButtonItem = blueItem
        view.backgroundColor = .yellow
        title = "Yellow"
    }
}

let rootViewController = YellowViewController()
let navigationController = UINavigationController(rootViewController: rootViewController)
PlaygroundPage.current.liveView = navigationController










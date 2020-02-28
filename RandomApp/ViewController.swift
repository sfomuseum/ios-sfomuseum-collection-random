import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
        
    @IBOutlet var webView: WKWebView!
    
    let wk_pool = WKProcessPool()
    let wk_store = WKWebsiteDataStore.default()
    
    let random_url = "https://millsfield.sfomuseum.org/random/auto"
        
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:random_url)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}



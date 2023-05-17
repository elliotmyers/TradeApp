//
//  TradeViewController.swift
//  TradeApp
//
//  Created by Raiden Yamato on 13.05.2023.
//

import UIKit
import WebKit


class TradeViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        
      
        let myURL = URL(string: "https://www.tradingview.com/chart/LOdk1dOS/?symbol=SP%3ASPX")
        let myRequest = URLRequest(url: myURL!)
        webView.loadHTMLString("""
<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tradingview_b1a9b"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets</span></a> on TradingView</div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
  new TradingView.widget(
  {
  "autosize": true,
  "symbol": "NASDAQ:AAPL",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "light",
  "style": "1",
  "locale": "en",
  "toolbar_bg": "#f1f3f6",
  "enable_publishing": false,
  "allow_symbol_change": true,
  "container_id": "tradingview_b1a9b"
}
  );
  </script>
</div>
<!-- TradingView Widget END -->

""", baseURL: nil)
    }
    

   

}

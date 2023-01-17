//
//  Webview.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 16/01/2023.
//

import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView.pageNotFoundView()
        }
        
        let request = URLRequest(url: url)
        let wKWebView = WKWebView()
        wKWebView.load(request)
        return wKWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Webview>) {
        guard let url = URL(string: self.url) else {
            return
        }
        
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct Webview_Previews: PreviewProvider {
    static var previews: some View {
        Webview(url: "")
    }
}

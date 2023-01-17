//
//  Extensions.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 16/01/2023.
//

import Foundation
import WebKit

extension WKWebView {
    static func pageNotFoundView() -> WKWebView {
        let wk = WKWebView()
        wk.loadHTMLString("page not found", baseURL: nil)
        return wk
    }
}

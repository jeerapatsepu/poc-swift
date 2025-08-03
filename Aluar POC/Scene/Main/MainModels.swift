//
//  MainModels.swift
//  Aluar POC
//
//  Created by Jeerapat Sripumngoen on 2/8/2568 BE.
//

import Foundation

struct MainModels {
    enum ViewType {
        case header(title: String, content: [ContentModel])
    }

    struct ContentModel {
        let title: String
        let id: Int
    }
}

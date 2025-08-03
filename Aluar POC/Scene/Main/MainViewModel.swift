//
//  MainViewModel.swift
//  Aluar POC
//
//  Created by Jeerapat Sripumngoen on 2/8/2568 BE.
//

import Foundation

class MainViewModel {
    func getContentList() -> [MainModels.ViewType] {
        return [
            .header(title: "test", content: [MainModels.ContentModel(title: "content", id: 0)]),
            .header(title: "test oierhioerhioerhioerhboierhiobheriobheroihbiorhebioerhioberiobioerbioerbioeribnoiernbienrbineriob", content: [MainModels.ContentModel(title: "content orinhiorngiorngirnglknreklgnreklngklrengkrengkernkgnekrgn", id: 1)]),
        ]
    }
}

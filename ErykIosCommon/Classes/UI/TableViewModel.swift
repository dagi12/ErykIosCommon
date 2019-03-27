//
//  TableViewModel.swift
//  esoftra
//
//  Created by Eryk Mariankowski on 09.01.2019.
//  Copyright © 2019 Eryk Mariankowski. All rights reserved.
//

import Foundation
import RxSwift

public protocol TableViewModel: StaticTableViewModel {
    func getItems(withSearchText text: String) -> Completable
    func getItems() -> Completable
}

public protocol StaticTableViewModel: class {
    associatedtype Model
    var items: [Model] { get set }
}

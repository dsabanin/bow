//
//  ListKWTest.swift
//  CategoryCoreTests
//
//  Created by Tomás Ruiz López on 20/11/17.
//  Copyright © 2017 Tomás Ruiz López. All rights reserved.
//

import XCTest
@testable import CategoryCore

class ListKWTest: XCTestCase {
    
    var generator : (Int) -> HK<ListKWF, Int> {
        return { a in ListKW<Int>.pure(a) }
    }
    
    func testFunctorLaws() {
        FunctorLaws<ListKWF>.check(functor: ListKW<Int>.functor(), generator: self.generator, eq: ListKW<Int>.eq(Int.order))
    }
    
}

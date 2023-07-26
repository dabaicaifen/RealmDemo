//
//  Person.swift
//  Second
//
//  Created by Wu, Tracy on 2023-07-26.
//

import RealmSwift

class Person: Object {

    @Persisted var name: String
    @Persisted(primaryKey: true) var id: String
}

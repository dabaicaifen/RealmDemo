//
//  Test.swift
//  RealmDemo
//
//  Created by Wu, Tracy on 2023-07-25.
//

import RealmSwift

class Test: Object {

    @Persisted var name: String
    @Persisted(primaryKey: true) var id: String
}

class TestDAO {

    public static func add(test name: String) throws -> String {
        let realm = try! Realm()
        let new = Test()
        new.name = name

        try! realm.write {
            realm.add(new)
        }
        return new.id
    }

    public static func get<T: Object>(ofType type: T.Type, for primaryKey: String) -> T {
        let realm = try! Realm()
        return realm.object(ofType: T.self, forPrimaryKey: primaryKey)!
    }
}

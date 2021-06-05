import Foundation

final class CallStation {
    var arrayUser: [User] = []
       var myCalls: [Call] = []
}

extension CallStation: Station {
    
    func users() -> [User] {
        return arrayUser
        
    }
    
    func add(user: User) {
        if !self.arrayUser.contains(user) {
                    self.arrayUser.append(user)
                }
    }
    
    func remove(user: User) {
        
       arrayUser.removeAll()
    }
    
    func execute(action: CallAction) -> CallID? {
        nil
    }
    
    func calls() -> [Call] {
        []
    }
    
    func calls(user: User) -> [Call] {
        []
    }
    
    func call(id: CallID) -> Call? {
        nil
    }
    
    func currentCall(user: User) -> Call? {
        nil
    }
}

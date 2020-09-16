import Foundation
func isValidPassword(password:String?) -> Bool {
    guard password != nil else { return false }
 
    // at least one uppercase,
    // at least one digit
    // at least one lowercase
    // 8 characters total
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: password)
}
isValidPassword(password: "AASSddff4455")
isValidPassword(password: "aabb34")


func checkpassword (a:String) -> String {
    if a.count >= 8 {
        return "password is vaild"
    }
    else {
       return "password isn't vaild"
    }
}
checkpassword(a: "ssdd4455")
checkpassword(a: "ccffdd")
let x = checkpassword(a: "s")
let y = checkpassword(a: "ssddhhrr66")
print(x)
print(y)

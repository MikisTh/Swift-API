//Graph and Tree Traversal

func factorial(_ n: Int) -> Int {
    if n <= 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

let result = factorial(20) 

func recurse() {
  ... ...  
  recurse()
  ...  ...     
}

recurse()

func recurse() {

  if(condition) {
    // break recursive call
    recurse()
  }

  else {
    // recursive call
    recurse()
  }
}

// function call 
recurse()

func factorial(num: Int) -> Int {

  // condition to break recursion
  if num == 0 {
    return 1
  } 

  // condition for recursive call
  else {
    return num * factorial(num: num - 1)
  }

}

var number = 5

// function call
var result = factorial(num: number)
print("The factorial de"+number+"is", result)
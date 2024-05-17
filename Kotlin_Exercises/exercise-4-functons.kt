fun sortArray(arr: IntArray): IntArray {
    arr.sort()
    return arr
}
fun factorial(n: Int):Int{
    if (n == 0) {
        return 1
    }
    else {
        return n * factorial(n - 1)
    }
}
fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (char in charSet) {
            return false
        }
        charSet.add(char)
    }
    return true
}


fun main(){
    println(sortArray(intArrayOf(1, 3, 2, 4, 5)).contentToString())
    println(factorial(5))
    println(hasUniqueCharacters("hello"))
}
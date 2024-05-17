fun sumOfEvenNumbersInRange(start: Int, end: Int): Int {
    var sum = 0
    for (i in start..end + 1) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    return sum
}


fun isPrime(number: Int): Boolean {
    if (number <= 1) return false
    var i = 2
    while (i * i <= number) {
        if (number % i == 0) {
            return false
        }
        i++
    }
    return true
}

fun findPrimesInRange(start: Int, end: Int): List<Int> {
    val primes = mutableListOf<Int>()
    var current = start
    while (current <= end) {
        if (isPrime(current)) {
            primes.add(current)
        }
        current++
    }
    return primes
}

fun isPalindrome(number: Int): Boolean {
    var originalNumber = number
    var reversedNumber = 0
    var remainder: Int
    while (originalNumber != 0) {
        remainder = originalNumber % 10
        reversedNumber = reversedNumber * 10 + remainder
        originalNumber /= 10
    }
    return number == reversedNumber
}

fun main(){
    println(sumOfEvenNumbersInRange(1, 50))
    println()
    println(findPrimesInRange(1, 50))
    println()
    println(isPalindrome(121))
    println()
}
class Rectangle(private val length: Double, private val width: Double) {

    fun perimeter(): Double {
        return 2 * (length + width)
    }

    fun area(): Double {
        return length * width
    }
}

class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {

    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    fun isIsosceles(): Boolean {
        return side1 == side2 || side1 == side3 || side2 == side3
    }

    fun isScalene(): Boolean {
        return !isEquilateral() && !isIsosceles()
    }
}



class ShoppingCart {
    private val items = mutableMapOf<String, Double>()

    fun addItem(itemName: String, price: Double) {
        items[itemName] = price
    }

    fun removeItem(itemName: String) {
        items.remove(itemName)
    }

    fun totalPrice(): Double {
        var totalPrice = 0.0
        items.values.forEach { totalPrice += it }
        return totalPrice
    }

    fun displayItems() {
        if (items.isEmpty()) {
            println("Shopping cart is empty.")
        } else {
            println("Items in the shopping cart:")
            items.forEach { (itemName, price) ->
                println("$itemName: $price")
            }
        }
    }
}

fun main() {
    val length = 5.0
    val width = 3.0
    val rectangle = Rectangle(length, width)

    println("Rectangle with length $length and width $width:")
    println("Perimeter: ${rectangle.perimeter()}")
    println("Area: ${rectangle.area()}")

    println()


    val side1 = 5.0
    val side2 = 5.0
    val side3 = 5.0
    val triangle = Triangle(side1, side2, side3)

    println("Triangle with sides: $side1, $side2, $side3")
    if (triangle.isEquilateral()) {
        println("The triangle is Equilateral.")
    } else if (triangle.isIsosceles()) {
        println("The triangle is Isosceles.")
    } else if (triangle.isScalene()) {
        println("The triangle is Scalene.")
    }

    println()

    val cart = ShoppingCart()

    cart.addItem("Laptop", 999.99)
    cart.addItem("Headphones", 149.99)
    cart.addItem("Phone", 699.99)

    cart.displayItems()

    val totalPrice = cart.totalPrice()
    println("Total price: $totalPrice")

    cart.removeItem("Headphones")

    cart.displayItems()

    val updatedTotalPrice = cart.totalPrice()
    println("Updated total price: $updatedTotalPrice")
}

fun main() {
    println("Enter a string:")
    val input = readLine() ?: ""

    if (input.isNotEmpty()) {
        var minChar = input[0]
        var maxChar = input[0]

        for (char in input) {
            if (char < minChar) {
                minChar = char
            }
            if (char > maxChar) {
                maxChar = char
            }
        }

        println("MinChar: $minChar")
        println("MaxChar: $maxChar")
    } else {
        println("empty string entered.")
    }
}

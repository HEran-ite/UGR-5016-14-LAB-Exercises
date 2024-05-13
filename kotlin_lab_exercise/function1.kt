fun analyzeString(input: String): Triple<Int, Int, Int> {
    var wordCount = 0
    var uppercaseCount = 0
    var vowelCount = 0

    val vowels = setOf('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')

    val words = input.split("\\s+".toRegex())


    for (word in words) {
        if (word.isNotBlank()) {
            wordCount++
        }

        for (char in word) {
            if (char.isUpperCase()) {
                uppercaseCount++
            }
            if (char in vowels) {
                vowelCount++
            }
        }
    }

    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
   
    val words : String
    println("enter the string:")
    words= readln()
    val (wordCount, uppercaseCount, vowelCount) = analyzeString(input)
    println("Number of words: $wordCount")
    println("Number of uppercase letters: $uppercaseCount")
    println("Number of vowels: $vowelCount")
}

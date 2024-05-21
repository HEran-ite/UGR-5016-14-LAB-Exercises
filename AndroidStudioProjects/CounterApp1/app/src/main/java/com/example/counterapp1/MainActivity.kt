package com.example.counterapp1

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    private var count = 0
    private lateinit var textViewCount: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Find views by their IDs
        textViewCount = findViewById(R.id.textView_count)
        val buttonIncrement = findViewById<Button>(R.id.button_increment)
        val buttonDecrement = findViewById<Button>(R.id.button_decrement)
        val buttonReset = findViewById<Button>(R.id.button_reset)

        // Set click listeners for buttons
        buttonIncrement.setOnClickListener {
            count++
            updateCountDisplay()
        }

        buttonDecrement.setOnClickListener {
            if (count > 0) {
                count--
                updateCountDisplay()
            } else {
                // Add a toast message or any other error handling if desired
            }
        }

        buttonReset.setOnClickListener {
            count = 0
            updateCountDisplay()
        }
    }

    // Function to update the count displayed in textViewCount
    private fun updateCountDisplay() {
        textViewCount.text = count.toString()
    }
}

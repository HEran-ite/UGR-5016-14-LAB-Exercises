package com.example.tutorial2.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val DarkColorPalette = darkColorScheme(
    primary = Color(0xFFBB86FC),
    onPrimary = Color.White,
    secondary = Color(0xFF03DAC6)
)

private val LightColorPalette = lightColorScheme(
    primary = Color(0xFF6200EE),
    onPrimary = Color.White,
    secondary = Color(0xFF03DAC6)
)

@Composable
fun CounterApp1Theme(content: @Composable () -> Unit) {
    val colors = LightColorPalette

    MaterialTheme(
        colorScheme = colors,
        typography = Typography,
        content = content
    )
}

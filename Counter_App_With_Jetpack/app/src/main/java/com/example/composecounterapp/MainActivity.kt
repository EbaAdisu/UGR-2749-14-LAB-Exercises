package com.example.composecounterapp

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material.Button
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.tooling.preview.Preview
import androidx.activity.compose.setContent

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            CounterApp()
        }
    }
}

@Composable
fun CounterApp() {
    var count by remember { mutableIntStateOf(0) }

    Column(modifier = Modifier.padding(16.dp)) {
        Text(text = "Count: $count")

        Button(onClick = { count++ }) {
            Text(text = "Increment")
        }

        Button(onClick = { count-- }) {
            Text(text = "Decrement")
        }

        Button(onClick = { count = 0 }) {
            Text(text = "Reset")
        }
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    CounterApp()
}

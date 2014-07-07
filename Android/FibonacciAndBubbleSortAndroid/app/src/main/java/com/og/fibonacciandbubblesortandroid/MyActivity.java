package com.og.fibonacciandbubblesortandroid;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;


/**
 * The class serving for test purpose
 *
 * @author Olivier Goutay
 */
public class MyActivity extends Activity {

    private Button buttonLaunchFib;
    private Button buttonLaunchBubble;
    private TextView textViewResult;

    private int[] inputArr = new int[1000];


    /**
     * On create method
     *
     * @param savedInstanceState saved
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my);

        buttonLaunchFib = (Button) findViewById(R.id.buttonLaunchFib);
        buttonLaunchBubble = (Button) findViewById(R.id.buttonLaunchBubble);
        textViewResult = (TextView) findViewById(R.id.textViewResult);

        buttonLaunchFib.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                long lStartTime = System.nanoTime();
                int answer = fib(30);

                long lEndTime = System.nanoTime();
                long difference = lEndTime - lStartTime;

                Log.d("Test Fibonacci", "Elapsed milliseconds: " + Double.valueOf(difference) / 1000000000.0f);
                Log.d("Test Fibonacci", "Answer: " + answer);
                textViewResult.setText("" + Double.valueOf(difference) / 1000000000.0f);
            }
        });

        buttonLaunchBubble.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //init table
                for (int i = 0; i < 1000; i += 10) {
                    inputArr[i] = 12;
                    inputArr[i + 1] = 56;
                    inputArr[i + 2] = 32;
                    inputArr[i + 3] = 23;
                    inputArr[i + 4] = 67;
                    inputArr[i + 5] = 87;
                    inputArr[i + 6] = 45;
                    inputArr[i + 7] = 23;
                    inputArr[i + 8] = 10;
                    inputArr[i + 9] = 11;
                }

                long lStartTime = System.nanoTime();
                bubbleSort();

                long lEndTime = System.nanoTime();
                long difference = lEndTime - lStartTime;

                Log.d("Test Bubble sort", "Elapsed milliseconds for sorting: " + Double.valueOf(difference) / 1000000000.0f);
                textViewResult.setText("" + Double.valueOf(difference) / 1000000000.0f);
            }
        });
    }

    /**
     * Invert two cells at index
     *
     * @param index1 the first index
     * @param index2 the second index
     */
    private void swapNumbers(int index1, int index2) {
        int temp = inputArr[index1];
        inputArr[index1] = inputArr[index2];
        inputArr[index2] = temp;
    }

    /**
     * Do the bubble sorting algorithm
     */
    private void bubbleSort() {
        for (int i = 0; i < inputArr.length; i++) {
            for (int j = 1; j < (inputArr.length - i); j++) {
                if (inputArr[j - 1] > inputArr[j]) {
                    swapNumbers(j - 1, j);
                }
            }
        }
    }

    /**
     * Return Fibonacci of start index
     *
     * @param start The index we want
     * @return The calculated Fibonacci number
     */
    private int fib(int start) {
        if (start == 0) {
            return start;
        }
        if (start == 1) {
            return start;
        }
        return fib(start - 1) + fib(start - 2);
    }
}
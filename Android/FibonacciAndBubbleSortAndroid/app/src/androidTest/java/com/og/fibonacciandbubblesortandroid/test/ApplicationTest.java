package com.og.fibonacciandbubblesortandroid.test;

import android.test.ActivityInstrumentationTestCase2;

import com.og.fibonacciandbubblesortandroid.MyActivity;
import com.robotium.solo.Solo;

/**
 * Testing Fundamentals
 *
 * @author Olivier Goutay
 */
public class ApplicationTest extends ActivityInstrumentationTestCase2<MyActivity> {
    private Solo solo;

    /**
     * Public constructor
     */
    public ApplicationTest() {
        super(MyActivity.class);
    }

    /**
     * Set up
     *
     * @throws Exception if there is one
     */
    protected void setUp() throws Exception {
        super.setUp();

        solo = new Solo(getInstrumentation(), getActivity());
    }

    /**
     * The real test
     */
    public void testActivity() {
        // robotium assert
        solo.assertCurrentActivity("MyActivity", MyActivity.class);
        // junit assert
        assertEquals(true, true);
    }
}
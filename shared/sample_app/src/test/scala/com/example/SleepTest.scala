package com.example

import org.scalatest.FlatSpec

class SleepTest extends FlatSpec {

  behavior of "Sleep"

  def sleep() = {
      Thread.sleep(5000);
  }

  it should "sleep test case 1" in {
    println("sleep test case 1 - start")
    sleep();
    println("sleep test case 1 - end")
  }

  it should "sleep case 2" in {
    println("sleep test case 2 - start")
    sleep();
    println("sleep test case 2 - end")
  }

}

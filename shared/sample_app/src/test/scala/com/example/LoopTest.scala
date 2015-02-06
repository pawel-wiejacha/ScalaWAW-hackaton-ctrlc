package com.example

import org.scalatest.FlatSpec

class LoopTest extends FlatSpec {

  behavior of "Loop"

  def loop() = {
      for (i <- 1 to 12 ) { 
          println("sleep", i)
          Thread.sleep(500);
    }
  }

  it should "loop test case 1" in {
    println("loop test case 1 - start")
    loop();
    println("loop test case 1 - end")
  }

  it should "loop test case 2" in {
    println("loop test case 2 - start")
    loop();
    println("loop test case 2 - end")
  }

}

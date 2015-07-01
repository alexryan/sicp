// scala ex1-3.scala

import scala.collection.mutable;

  object HelloWorld {

    def square(a:Int) : Int = {
      return a*a
    }

    def min(a:Int, b:Int) : Int = {
      if (a < b) {
        return a
      }
      return b
    }

    def min3(a:Int, b:Int, c:Int) : Int = {
      min(a, min(b, c))
    }

    def sumofsquares(a:Int, b:Int, c:Int) : Int = {
      square(a) + square(b) + square(c)
    }

    def q3(a:Int, b:Int, c:Int) : Int = {
      sumofsquares(a, b, c) - square(min3(a, b, c))
    }

    def main(args: Array[String]) {
      //println(square(5));
      //println(min(2,3));
      //println(min(3,2));
      //println(min3(2,3,4));
      //println(min3(3,4,2));
      //println(min3(4,2,3));
      //println(sumofsquares(2,3,4));
      println(q3(2,3,4));

    } // main
  }

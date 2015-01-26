#!/usr/bin/env ruby
require "minitest/autorun"


class TestMeme < Minitest::Test
  def triangle a,b,c
    if (a==b) and (a==c)
      return :equilateral
    elsif (a==b) and (b!=c)
      return :isosceles
    elsif (a!=b) and (b==c)
      return :isosceles
    elsif (a==c) and (a!=b)
      return :isosceles
    else
      return :scalene
  end
end

  def test_equilateral
    assert_equal :equilateral, triangle(5,5,5)
  end

  def test_isosceles
    assert_equal :isosceles, triangle(2,2,3)
  end

  def test_other_isosceles
    assert_equal :isosceles, triangle(3,4,3)
  end

  def test_scalene
    assert_equal :scalene, triangle(6,7,8)
  end
end


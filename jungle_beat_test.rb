require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './jungle_beat'

class Jungle_best_test < Minitest::Test

  def test_it_exists
    assert JungleBeat
  end

  def test_it_has_a_head
    jb = JungleBeat.new('dee')

    assert_equal 'dee', jb.head?
  end

  def test_it_head_is_nil
    jb = JungleBeat.new()

    assert_equal nil, jb.head?
  end

  def test_it_has_a_tail_one_node
    jb = JungleBeat.new('dee')

    assert_equal jb.tail.data, jb.head?
  end

  def test_it_has_a_tail
    jb = JungleBeat.new('dee woot roar')

    assert_equal 'roar', jb.tail.data
  end

  def test_it_can_append_one_node
    jb = JungleBeat.new('dee')

    assert_equal 'dee', jb.tail.data

    jb.append('woot')

    assert_equal 'woot', jb.tail.data
  end

  def test_it_can_append_multiple_nodes
    jb = JungleBeat.new('dee')

    assert_equal 'dee', jb.tail.data

    jb.append('woot cool food')

    assert_equal 'food', jb.tail.data
  end

  def test_it_can_prepend_one_node
    jb = JungleBeat.new('dee')

    assert_equal 'dee', jb.head?

    jb.prepend('woot')

    assert_equal 'woot', jb.head?
    assert_equal 'dee', jb.tail.data
  end

  def test_it_can_prepend_multiple
    jb = JungleBeat.new('dee')

    assert_equal 'dee', jb.head?

    jb.prepend('woot cool yeah')

    assert_equal 'woot', jb.head?
    assert_equal 'dee', jb.tail.data
  end


end

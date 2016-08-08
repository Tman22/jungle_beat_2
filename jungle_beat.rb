require './node'
require 'pry'

class JungleBeat
  attr_reader :head

  def initialize(node = nil)
    node ? create_link_list(node) : @head = Node.new()
  end

  def create_link_list(node)
    current = nil
    node.split.each do |word|
      if @head
        node = Node.new(word)
        current.link = node
        current = node
      else
        @head = Node.new(word)
        current = head
      end
    end
  end

  def head?
    head.data
  end

  def tail
    current = head
    until current.link.nil?
      current = current.link
    end
    current
  end

  def create_nodes(string)
    string.split.map do |word|
      Node.new(word)
    end
  end

  def append(string)
    new_nodes = create_nodes(string)
    current = tail
    new_nodes.each do |node|
      current.link = node
      current = node
    end
  end

  def prepend(string)
    last = head
    @head = nil
    create_link_list(string)
    tail.link = last
  end



end

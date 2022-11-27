require 'pry'
class Tree
  def initialize(root = nil)
    @root = root
  end

  # def get_element_by_id(string)
  #   # binding.pry

  #   depth_first_traversal(string)
  # end

  def get_element_by_id(id)
    nodes_to_visit = [@root]
    # binding.pry
    until nodes_to_visit.empty?
      # binding.pry
      current = nodes_to_visit.pop
      # binding.pry
      return current if current[:id] == id

      nodes_to_visit = nodes_to_visit + current[:children]
    end
    nil
  end

  # def depth_first_traversal(node, result = [])

  #   result.push(node[:value])
  #   node[:children].each do |child|
  #     depth_first_traversal(child, result)
  #   end

    # while nodes_to_visit.length > 0
    #   node = nodes_to_visit.shift
    #   result.push(node[:value])
    #   nodes_to_visit = node[:children] + nodes_to_visit
    # end

  #   result
  # end
end

# binding.pry
# 0
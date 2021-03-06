class Chef
  class Recipe
    def node_name
      if @node["sensu-client-wrapper"]["name"] then
        node_name = @node["sensu-client-wrapper"]["name"]
      else
        node_name = Chef::Config[:node_name]
      end
      node_name.gsub!(/[^\w\.\-]+/,".")
      return node_name
    end
  end
end

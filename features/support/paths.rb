module NavigationHelpers
  def path_to(page_name)
    case page_name
      
    when /the home\s?page/
      '/'
    when /the new\ssubject\s?page/
      new_subject_path
    else
      begin
        page_name =~ /the (.*) page/
        self.puts "#{page_name}"
        self.puts "#{$1.inspect}"
        path_components = $1.split(/\s+/)
        self.puts "#{path_components.push('path').join('_').to_sym}"
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
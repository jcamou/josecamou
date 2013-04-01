module Jekyll
  class CategoryAwareOlderGenerator < Generator

    # This was adapted from David Strauß github found at https://gist.github.com/stravid/4078840

    safe true
    priority :high

    def generate(site)
      site.categories.each_pair do |category_name, posts|
        posts.sort! { |a, b| b <=> a }

        posts.each do |post|
          position = posts.index post

          if position && position < posts.length - 1
            category_older = posts[position + 1]
          else
            category_older = nil
          end

          post.data["#{category_name}_older"] = category_older unless category_older.nil?
        end
      end
    end
  end

  class CategoryAwareNewerGenerator < Generator

    safe true
    priority :high

    def generate(site)
      site.categories.each_pair do |category_name, posts|
        posts.sort! { |a, b| a <=> b }

        posts.each do |post|
          position = posts.index post

          if position && position < posts.length - 1
            category_newer = posts[position + 1]
          else
            category_newer = nil
          end

          post.data["#{category_name}_newer"] = category_newer unless category_newer.nil?
        end
      end
    end
  end
end

# Предложите вариант рефакторинга с использованием полиморфизма для фрагмента кода:

# class Search
#   def search(type)
#     case type
#       when :job
#         search_jobs
#       when :user
#         search_users
#       else
#         raise 'Unknown search type'
# 	  end
#   end
# end

class Search
  def search
    raise 'Unknown search type'
  end
end

class Job < Search
  def search
    search_jobs
  end
end

class User < Search
  def search
    search_users
  end
end

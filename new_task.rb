n = 7
a = [1,2,3,4,6,5]
b = [7,6,4,1,2,1]

def tasks(n , a, b)
  order_tasks = 0
  key_list = a
  value_list = b
  c_hash = {}
  drop_task = 0
    key_list.each_with_index do |key,i|
      c_hash[key] = value_list[i]
    end
    c_hash.each do |key, value|
      # if key == value && value == key
      #   drop_task += 1
      # end
    end
    # puts drop_task
    # puts c_hash
    # answer = c_hash.length - drop_task
    # return answer
  end


puts tasks(n, a, b)

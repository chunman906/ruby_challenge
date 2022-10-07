def tasks(n , a, b):
  order_tasks = 0
  key_list = a
  value_list = b
  c_hash = {}
  drop_task = 0
    key_list.each do |key|
      value_list.each do |value|
        c_hash[key] = value
      end
    end
    c_hash.each do |key, value|
      if key == value && value == key
        drop_task += 1
      end
    end
    answer = c_hash.length - drop_task
    return answer
  end

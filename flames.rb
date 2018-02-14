def subtract_once(arr1,arr2)
  counts = arr2.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
  arr1.reject { |e| counts[e] -= 1 unless counts[e].zero? }
end

puts "Enter first person name"
a=gets.chomp().split().join().split('')
puts "Enter second person name"
b=gets.chomp().split().join().split('')
c=(subtract_once(a, b) + subtract_once(b,a)).count
x="FLAMES".split('')
5.times do
  temp= (c + x.count - 1) % x.count
  x.delete_at(temp)
  x=x.rotate(temp)
end

puts x.first

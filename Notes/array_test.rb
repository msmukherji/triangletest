array = [1,5,7]
puts array.permutation(3).to_a

a = [1,5,7]
a.permutation (1).to_a + a.permutation(2).to_a

b = [:a, :b, :c, :d]
result = []
(1... bsize).each do |i|
	result += b.permutation(i).to_a
end
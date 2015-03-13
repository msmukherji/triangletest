
a = [`curl -XPOST http://172.29.28.221:3000/harder`,`curl -XPOST http://172.29.28.221:3000/better`,`curl -XPOST http://172.29.28.221:3000/faster`,`curl -XPOST http://172.29.28.221:3000/stronger`]

4.times do
  a.sample
end
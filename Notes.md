## Union usage
julia> set1 = Set(3, 4, 5, 6)
       set2 = Set(1, 3, 4)
       union(set1,set2)
Set{Int64}({4,3,5,6,1})
julia> a = Set("Hello")
Set{Char}({'e','H','l','o'})

julia> b = Set([10:-1:6])
Set{Int64}({7,9,10,8,6})

julia> union(a,b)
Set{Integer}({7,9,10,'e','H','l',8,'o',6})



for i = 1 : 5
    println(i)
end
console():
1
2
3
4
5

i = 5

6i
will be have 30

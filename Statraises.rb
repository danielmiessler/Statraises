class Array
    def sum
        self.inject{|sum,x| sum + x }
    end
end

nod = 10
noc = 1000000
target = 20
rolls = []
dicetype = 6
success = 0
failure = 0

noc.times do
  nod.times do
  rolls.push(1 + rand(dicetype))
end

if rolls.sum >= target :
  success += 1
else
  failure += 1
end
rolls.clear
end

percentage = success.to_f / noc.to_f * 100
print "When rolling one million times on #{nod} dice with a target of #{target}, there were #{success} successes and #{failure} failures, which is #{percentage}%."



  
  

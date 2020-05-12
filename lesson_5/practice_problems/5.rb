#Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# figure out the total age of just the male members of the family.

# Show Solution

#select all the males

# add up their ages

male_munsters = munsters.select {|_, attrs| attrs["gender"] == "male"}
male_age = 0

male_munsters.each {|_, attrs| male_age += attrs["age"] }
p male_age

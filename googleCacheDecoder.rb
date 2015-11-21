File.open('2.htm','w'){|io|
   io.write File.read("1").gsub(/^.{8}: /,"").gsub(/  .*/,"").gsub("\n"," ").scan(/.{3}/).map{|a| a.strip.to_i(16).chr }.join
}
def leap_year?(y)
  return false unless y % 4   == 0
  return true  unless y % 100 == 0
  y % 400 == 0
end



begin
  ARGV[0] or raise 'missing year'
 
  y = Integer(ARGV[0])
  y >= 0 or raise "invalid year: #{y}"
  puts "#{y}: #{leap_year?(y)}"
rescue => ex



# 例外が発生したら、エラーメッセージ・使用方法を出力して終了。
me = File.basename($0, '.rb')
$stderr.puts "#{me}: #{ex}"
$stderr.puts "Usage: #{me} YEAR"
end

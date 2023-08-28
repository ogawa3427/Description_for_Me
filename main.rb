#Rubyでで標準入力の第一引数を出力するプログラムを作成してください。
#ただし、第一引数がない場合は、error!と出力してください。

if ARGV[0] == nil
    puts "error!"
else
    if ARGV[0] == "-r"
        puts "regi mode"
    elseif ARGV[0] == "-l"
        puts "list mode"
    elseif ARGV[0] == "-o"
        puts "output mode"
    else
        puts "error!"
    end
end
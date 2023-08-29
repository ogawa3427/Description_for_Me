def check_file_existence(file_path)
    unless File.exist?(file_path)
      puts "Error: File does not exist."
    end
end

require 'csv'

#初期動作
# 実行ファイルのディレクトリを取得
current_dir = File.dirname(__FILE__)

# kesuna.txtのフルパスを生成
kesuna_file_path = File.join(current_dir, 'kesuna.txt')

# kesuna.txtが存在するか確認
if File.exist?(kesuna_file_path)
    #puts "kesuna.txt is found."
else
    #puts "kesuna.txt is not found."
    File.open('kesuna.txt', 'w') {}
end

if ARGV[0] == "-r"
    file_path = ARGV[1]
    if File.exist?(file_path)
        File.open( 'kesuna.txt', 'w' ) { |file| file.puts ARGV[1] }
    else
        puts "Error: File does not exist."
    end
end



require 'csv'

namespace :import_csv do
  desc "CSVデータをインポートするタスク"

  task users: :environment do
    path = "db/csv_data/csv_data.csv"

    list = []

    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    puts "インポート処理を開始"
    begin
      User.create!(list)
      puts "インポート完了!!"
    rescue StandardError => e
      puts "#{e.class}: #{e.message}"
      puts "-------------------------"
      puts e.backtrace
      puts "-------------------------"
      puts "インポートに失敗"
    end
  end
end

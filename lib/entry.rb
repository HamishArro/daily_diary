require 'pg'

class Entry
  attr_reader :title, :body

  def initialize(title:, body:)
    @title = title
    @body = body
  end

  def self.add(title:, body:)

    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'daily_diary_test')
    else connection = PG.connect(dbname: 'daily_diary')
    end

    result = connection.exec("INSERT INTO diary (title, body) VALUES ('#{title}', '#{body}') RETURNING title, body;")
    Entry.new(title: result[0]['title'], body: result[0]['body'])

  end

end

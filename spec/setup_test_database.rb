require 'pg'

def setup_test_database
    p 'Setting up database...'

    connection = PG.connect(dbname: 'daily_diary_test')

    connection.exec("TRUNCATE diary;")
end

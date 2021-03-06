module MassInsert
  # This class is responsible to execute the queries into the database.
  # Uses the ActiveRecord::Base.connection.execute functionality.
  class Executer

    def execute queries
      Array(queries).each do |query|
        ActiveRecord::Base.connection.execute(query)
      end
    end

  end
end

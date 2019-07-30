class Request
  def initialize(request_id: , guest: , host: , space: , approved: nil )
    @request_id = request_id
    @guest = guest
    @host = host
    @space = space
    @approved = convert_sql_to_bool(approved)
  end
  attr_reader :request_id , :guest , :host , :space , :approved

  def self.approve(request_id)
    result = DatabaseConnection.query("UPDATE requests SET approved = true
     WHERE request_id = #{request_id}
     RETURNING request_id, guest, host, space, approved;"
    )
    Request.new(request_id: result[0]["request_id"],guest: result[0]["guest"],host: result[0]["host"], space: result[0]["space"], approved: result[0]["approved"])
  end

  def self.reject(request_id)
    result = DatabaseConnection.query("UPDATE requests SET approved = false
     WHERE request_id = #{request_id}
     RETURNING request_id, guest, host, space, approved;"
    )
    Request.new(request_id: result[0]["request_id"],guest: result[0]["guest"],host: result[0]["host"], space: result[0]["space"], approved: result[0]["approved"])
  end

  def convert_sql_to_bool(sql_input)
    if sql_input == "t"
      return true
    elsif sql_input == "f"
      return false
    else
      return sql_input
    end
  end
end
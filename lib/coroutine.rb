require "coroutine/version"

module Coroutine

  def self.who_has_to_have_lunch_with_me
    employees = %w[scott mark phil fred]
    days = %w[mon tue wed thu fri]

    days.map do |day|
      "#{day} => #{employees.sample(2)}"
    end
  end
end

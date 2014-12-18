#require "coroutine/version"

module Coroutine

  def self.who_has_to_have_lunch_with_me
    employees = %w[scott mark phil fred]
    days = %w[mon tue wed thu fri]

    days.map do |day|
      who_is_going = employees.sample(2);
      "#{day} => #{who_is_going} @ #{where_will_we_have_lunch?(who_is_going)}"
    end
  end

  def self.where_will_we_have_lunch?(employees)
    restaurants = %w[sherpas reubens jaipur japango kasa zomama khow-thai illegalpetes kitchennextdoor mediterranean leaf lyfe falafelking lindseys taco yellowdeli wokeat]

    if employees.include?("mark")
      restaurants = "jaipur"
    else
      restaurants.sample
    end
  end

end

class Recipe < ActiveRecord::Base

  def ingredient_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_prep_time
    @hours = prep_time.to_i / 60
    @minutes = prep_time.to_i % 60

    if @hours > 0 && @minutes > 0
      "#{@hours} hours, #{@minutes} minutes"
    elsif @hours == 0
      "#{@minutes} minutes"
    else
      "#{@hours} hours"
    end
  end

  def friendly_updated_at
    updated_at.strftime("%b, %e, %Y")
  end


end

module ApplicationHelper

	def current_user_food_quantity(food)
		if current_user.draft_order.blank?
      0
    else
      order = current_user.draft_order
      if order.foods.include? food
        cart = order.carts.find_by_food_id(food.id)
        cart.quantity
      else
        0
      end
    end
	end

end

class CashRegister

    attr_accessor :discount, :items, :total

    def initialize(discount = 0.0)
        @total = 0
        @items = []
        @discount = discount.to_f
    end

    def total
        @total
    end

    def add_item(name, price, quantity = 1)
        @old_total = @total
        @old_items = @items
        @items += [name] * quantity
        @total += (price * quantity)
    end

    def apply_discount
        if @discount != 0.0
            @total -= @total * (@discount / 100)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @items = @old_items
        @total = @old_total
    end

end

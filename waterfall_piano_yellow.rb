#A Project For Providing Nutritious Meals For Those In Need

class Meal

    def initialize(name, ingredients, cooking_instructions)
        @name = name
        @ingredients = ingredients
        @cooking_instructions = cooking_instructions
    end

    # getters
    def name
        @name
    end

    def ingredients
        @ingredients
    end

    def cooking_instructions
        @cooking_instructions
    end

    # setters
    def name=(name)
        @name = name
    end

    def ingredients=(ingredients)
        @ingredients = ingredients
    end

    def cooking_instructions=(cooking_instructions)
        @cooking_instructions = cooking_instructions
    end

end

class RecipeBook 

    def initialize
        @meals = []
    end

    # getters
    def meals
        @meals
    end

    # setters
    def meals=(meals)
        @meals = meals
    end

    def add_meal(meal)
        @meals << meal
    end

end

class MealCreator

    def self.create_meal(name, ingredients, instructions)
        meal = Meal.new(name, ingredients, instructions)
        meal
    end 

end 

class Program 

    # Method to initialize all objects & task
    # or necessary variables
    def initialize
        @recipe_book = RecipeBook.new 
        @meals = [
            MealCreator.create_meal("Stir-Fry", ["Vegetables", "Rice"], "1. Heat up the oil\n2. Sautee the vegetables\n3. Add the rice and fry until all ingredients are cooked through"), 
            MealCreator.create_meal("Salad", ["Tomatoes", "Lettuce"], "1. Wash the tomatoes and lettuce\n2. Cut the tomatoes and lettuce into cubes\n3. Mix the tomatoes and lettuce\n4. Drizzle the salad with olive oil"), 
            MealCreator.create_meal("Pasta", ["Spaghetti", "Tomato Sauce", "Cheese"], "1. Boil the spaghetti until aldente\n2. Heat up the tomato sauce in a saucepan\n3. Mix the cooked spaghetti with the tomato sauce\n4. Sprinkle the cheese on top")
        ]
    end 

    # Method to add the meals to the recipe book
    def add_meals_to_recipe_book
        @meals.each do |meal|
            @recipe_book.add_meal(meal)
        end
    end

    # Method to display all the meals
    def display_meals
        @recipe_book.meals.each do |meal|
            puts "Name: #{meal.name}"
            puts "Ingredients: #{meal.ingredients.join(", ")}"
            puts "Instructions: #{meal.cooking_instructions}"
            puts "--------------------"
        end 
    end 
end

# Create a program object
program = Program.new 
# Add the meals to the recipe book
program.add_meals_to_recipe_book 
# Display all the meals
program.display_meals
class PokemonsController < ApplicationController
	def capture
	@pokemon = Pokemon.find(params[:id]) 
	@pokemon.trainer = current_trainer 
	@pokemon.save
	redirect_to root_path
	end

	def damage
	@pokemon = Pokemon.find(params[:id])
	@pokemon.health -= 10 
	if @pokemon.health>0
		@pokemon.save
	else
		@pokemon.destroy
	end	
	redirect_to trainer_path(@pokemon.trainer_id)
	end 

	def create
	@pokemon = Pokemon.new(param) 
	@pokemon.trainer = current_trainer
	@pokemon.level = 1
	@pokemon.health = 100
	if @pokemon.save
	    redirect_to trainer_path(@current_trainer) 
 	else 
 		flash[:error] = @pokemon.errors.full_messages.to_sentence
 		redirect_to new_pokemon_path
 	end
	end

	def param
		params.require(:pokemon).permit(:name)
  	end



end
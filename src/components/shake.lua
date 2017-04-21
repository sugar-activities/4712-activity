module(..., package.seeall)

class "ShakeComponent" (Component)

function ShakeComponent:__init(duration)
  Component.__init(self)
  self.duration = duration or 500
end

function ShakeComponent:add_to_game()
end

function ShakeComponent:remove_from_game()
  print("########ShakeComponent:remove_from_game()")
  ingame_main:remove_from_game(self)
end

function ShakeComponent:shake()
  self.__current_time = 0
  ingame_main:add_component(self)
end

function ShakeComponent:update(game, delta)
  self.__current_time = self.__current_time + delta
  self.__
end
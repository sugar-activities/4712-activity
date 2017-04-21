package.path = package.path .. ";" .. "./lua_libs/?.lua;./src/?.lua"
package.cpath = package.cpath .. ";" .. "./lua_libs/?.dll"

module(..., package.seeall)

local puzzles = "components.puzzles.puzzles".puzzles


class "ConsoleDebugComponent" (Component)

local TextEditComponent = require "components.gui.text_edit".TextEditComponent
local layered = require 'components.layered_render'
local LayeredRenderComponent = layered.LayeredRenderComponent

function ConsoleDebugComponent:__init(render_node, pos)
  --print("y = "..pos.y)
  --print("x = "..pos.x)
  Component.__init(self)
  self.render_node = render_node;
  self.count = 5
  self.id = "ConsoleDebug"
  self.data = require 'components.puzzles.consoleData'.answersNumber
  self.pos = pos
  self.__left = game:get_system("input"):get("left")
  self.__right = game:get_system("input"):get("right")
  self.__action_1 = game:get_system("input"):get("action_1")
  self.__up = game:get_system("input"):get("up")
  self.__down = game:get_system("input"):get("down")
  self.buttons = {}
  self.digits = {}
  self.init_index = 1
  self.current_button_index = self.init_index
  self.actionIndex = 0
  self:create_buttons()
end

function ConsoleDebugComponent:getNumber()
  local responde = ""
  for i=1,self.count do 
    local digit = self.digits[i]:get_text()
    if tonumber(digit)>0 or not (responde=="") then
      responde = responde..digit
    end  
  end
 -- print ("responde = "..responde)
  if responde=="" then
    return 0
  end
  return tonumber(responde)
end

function ConsoleDebugComponent:load_sprite(path, asset_loader, is_gui)
  asset_loader = game.main_stage.asset_storage
  local sprite = Sprite(asset_loader:
    load_texture(path))

  if is_gui == nil or is_gui == false then
    sprite.trans_x = -sprite.texture.w*0.5
    sprite.trans_y = -sprite.texture.h*0.5
  else
    sprite.trans_x = -sprite.texture.w*0.5
    sprite.trans_y = -sprite.texture.h*0.5
  end
  return sprite
end

function ConsoleDebugComponent:resetActive()  
  self.current_button_index = self.init_index
  self:active()
end

function ConsoleDebugComponent:active()  
  if self.actionIndex>0 then
      self.buttons[self.current_button_index]:get_component("render"):set_image("action_select")
  else
      self.buttons[self.current_button_index]:get_component("render"):set_image("select")
  end
end

function ConsoleDebugComponent:desactive()  
  if self.actionIndex>0 then
      self.buttons[self.current_button_index]:get_component("render"):set_image("action")
  else
      self.buttons[self.current_button_index]:get_component("render"):set_image("normal")
  end
  
end

function ConsoleDebugComponent:create_buttons() 
  
  local asset_loader = game.main_stage.asset_storage
  local font = asset_loader:load_font("assets/puzzles/Fonts/"..self.data.fontNumber..".ttf", self.data.fontNumberSize)
  
  for i=1,self.count do    
    local button = game.main_stage:create_entity("ButtonResponse"..i)
    --Add the sprites  

    local render = RenderComponent(
      {normal=self:load_sprite("assets/puzzles/ResponseNum.png", nil, true),
       select=self:load_sprite("assets/puzzles/ResponseNum_Select.png", nil, true),
       action=self:load_sprite("assets/puzzles/ResponseNum_action.png", nil, true),
       action_select=self:load_sprite("assets/puzzles/ResponseNum_action_Select.png", nil, true)},
       {}, self.render_node)

    --ingame_stage.map_renderable
    button:add_component(render)

    render:set_image("normal")

    button.p.x = self.pos.x + self.data.answersDistance * (i-0.5-(self.count*0.5))
    button.p.y = self.pos.y
    button:add_to_game()    
    local text = game.text_factory:get_text(font, -1)
    text.width = self.data.textWidth
    text.height = self.data.textHeight
    text.p.x = -text.width*0.5
    text.p.y = -text.height*0.5
    text:set_text("0")
    text.h_alignment =1
    text.v_alignment =1
    render.render_node.children:add_child(text)
    table.insert(self.buttons, button)
    table.insert(self.digits, text)
  end
end


function ConsoleDebugComponent:visibility(aVisible) 
  if aVisible then
    for i=1,self.count do 
      self.buttons[i]:add_to_game() 
    end
  else
    for i=1,self.count do 
      self.buttons[i]:remove_from_game()
    end
  end
end


function ConsoleDebugComponent:UpdateButtons()

  for i=1,self.count do 
    if self.current_button_index==i then
      if self.actionIndex>0 then
        self.buttons[i]:get_component("render"):set_image("action_select")
        ingame_stage.soundmanager:play("button_down")
      else
          self.buttons[i]:get_component("render"):set_image("select")
          ingame_stage.soundmanager:play("button_over")
      end
    else

      if self.actionIndex>0 then
          self.buttons[i]:get_component("render"):set_image("action")
          ingame_stage.soundmanager:play("button_down")
      else
          self.buttons[i]:get_component("render"):set_image("normal")
      end
    end
  end
end

function ConsoleDebugComponent:update(game, delta)
  if self.__left.down and not self.__action_1.pressed then
    if self.current_button_index > 1 then
      --Deselect current button and select previous button
      self:desactive()
      self.current_button_index = self.current_button_index - 1
      self:active()
    end
  end
  if self.__right.down and not self.__action_1.pressed then
    if self.current_button_index < table.getn(self.buttons) then
      --Deselect current button and select next button
      self:desactive()
      self.current_button_index = self.current_button_index + 1
      self:active()
    end
  end
  if self.__action_1.down then
    if self.actionIndex>0  then
      self.actionIndex = 0
    else
      self.actionIndex = self.current_button_index
    end  
    self:UpdateButtons()
  end  



  if self.actionIndex>0  then
    local text = self.digits[self.current_button_index]
    local digit = tonumber(text:get_text())
    if self.__up.down and not self.__action_1.pressed then
      if digit<9 then
        digit = digit +1
        text:set_text(""..digit)
      end
    end
    if self.__down.down and not self.__action_1.pressed then
      if digit>0 then
        digit = digit -1
        text:set_text(""..digit)
      end      
    end
    if self.__action_1.down then
      
      self:active()
    end 
  end 
end
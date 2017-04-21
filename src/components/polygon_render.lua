LuaQ  %   @./src/components/polygon_render.lua           I      e  @  @@  A@  ΐ@ ΐ    Aΐ     B E@  \ ΐ \@ E €   I E €@  IE €  I E €ΐ  IE €  I E €@ IE € I E €ΐ IE €  I E €@ I@   \     Ε $       Ι Ε $Α Ι Ε $ Ι Ε $A Ι Ε $ Ι         module    package    seeall    Stack    require    utils.stack    v    math.vector    Vector    class    PolygonRenderComponent 
   Component    __init    get_renderable    reset    set_on_ground    animate    render 	   finished    get_previous_index    update    update_renderables    set_renderables    on_hint_end    hint    add_to_game    remove_from_game        
          Ε   Ζ@ΐ   ά@ 	@ Λ Α ά 	ΐΕ ά 	ΐ	 ΒΕ ά 	ΐΛΐB e  ά@       
   Component    __init    render_child    __master_node    get_render_node    render_holder    RenderNode    id    polygon_render    __renderable_cache    Stack    reset                                                                       self           render_child           arg                           F @ F@ΐ @ ΐ F @ Kΐΐ ]  ^   E  ]  ^           __renderable_cache    size            pop    RenderNode                                                  self                   ,     ,   	@ 	 	 	@Ϊ@  @   ΐ  A AA  AΑ ΖA  	B    A ΖB ΕB Bά ΔB CDCDC ΔCDα   ύ‘  ϋD A         renderable    points    trail_animation    separation    render_holder    set_renderable    __animation_manager    AnimationManager    __renderables    ipairs    renderables    __master_node 	   children    remove_child    __renderable_cache    push    set_renderables     ,                               !   !   !   !   "   "   "   "   "   #   #   #   $   $   $   $   %   %   %   %   &   &   &   &   &   '   '   '   '   %   '   $   (   +   +   ,         self     +      renderable     +      trail_animation     +      animations     +      points     +      separation     +      (for generator)    )      (for state)    )      (for control)    )      _    '      renderables    '      (for generator)    '      (for state)    '      (for control)    '      _    %      renderable    %           .   0        F @ K@ΐ Α    \@         __animation_manager    play    set        /   /   /   /   /   0         self                2   <     	   A   @@ Α      ΐΑ@   Α@AΐA AΑAΒ@ B AL ΐ  A AΑAB Aϊ  	         π?   __last_added       πΏ   trail_animation       @           __renderables    set_renderable    renderable        3   4   4   4   4   5   5   5   5   5   5   5   6   6   6   6   6   6   7   7   9   9   9   9   9   4   <         self           animation_i          (for index)          (for limit)          (for step)          i               >   D        E   @@ \   Ζΐ ΖΒ@ ΖΑΛBΑ@ άB‘   ώa  ό        ipairs    __renderables    renderables    __master_node 	   children 
   add_child        ?   ?   ?   ?   @   @   @   @   A   A   A   A   A   @   A   ?   B   D         self           (for generator)          (for state)          (for control)          _          renderables          (for generator)          (for state)          (for control)          _          renderable               F   I        	@  @ @         __on_disappear        G   H   H   I         self           on_disappear                K   M     
    @    @@Ζ @ Τ ΐ @          points        @      π?    
   L   L   L   L   L   L   L   L   L   M         self     	   
   for_index     	           O   Q        F @ K@ΐ \@         __animation_manager    update        P   P   P   Q         self                S   _     /   @  FA@ F  Α@ AB@  ΛAA@άΛΑά ΒA  E FBΒΒΖBΤΒ\  ΒBΐB @ CBCΐC  BC ΓCDBDCώ	B        get_previous_index    points    v    Vector    set    sub    length    __renderables    math    floor    renderables    min    last_added       π?   __master_node 	   children 
   add_child     /   T   T   T   U   U   V   V   V   V   V   V   V   W   W   W   W   W   X   X   Y   Y   Y   Y   Y   Y   Y   Z   Z   Z   Z   Z   Z   Z   [   [   [   [   [   \   \   \   \   \   \   [   ^   _         self     .      game     .      current_point     .      show_distance     .      previous_index    .      previous_point    .      next_point    .      side_length    .      current_renderable    .      to_add    .      (for index) %   -      (for limit) %   -      (for step) %   -      i &   ,           c   |    C   J   	@ 	ΐAΐ   A   Αΐ  ` D  KAΑΖA Ζ\AKA ΐ \ AAA BΔ  ΛΑΑ@ άΒ KBΒ\ KΒΖΒB \  ΖΒB  @CCCC  FCΓCIFCDIKCDΖD \CEΓ FΕ ΐ \CFΓB ΜBΐωΓ EF@   ΐC_@ρ        __renderables    __last_added               π?   points    set    get_previous_index    sub    length 
   normalize    mul    separation    add    get_renderable    p    x    y    set_renderable    render_holder    table    insert    last_added    renderables     C   d   d   e   f   f   f   f   f   g   g   g   g   g   h   h   h   i   i   i   i   i   j   j   j   j   k   k   l   l   l   l   l   m   n   p   p   q   q   q   r   r   t   t   t   u   u   u   v   v   v   w   w   w   w   w   x   x   x   z   z   z   z   z   z   z   f   |         self     B      (for index)    B      (for limit)    B      (for step)    B      i    A      previous_index    A      previous_point    A   	   distance    A      side_length    A   	   velocity     A      side_renderables !   A      current_distance "   A      holder )   9         next_point    aux_vector     ~           F @ K@ΐ Γ \@        render_holder    set_renderable                             self                           F @ K@ΐ Α    d      \@        __animation_manager    play    hint                       @ @         on_hint_end                              self                                  self                           F @ K@ΐ \@ F@  A @AIE KΐΑ ΐ   \@        render_child    add_to_game    __master_node    foreign_pos    parent    p    ingame_main    add_component                                                  self                           E   @  \@ F@ Kΐΐ \@ E  K@Α ΐ   \@        print 2   ########PolygonRenderComponent:remove_from_game()    render_child    remove_from_game    ingame_main    remove_component                                               self     
       I                                                                  
      
               ,      .   0   .   2   <   2   >   D   >   F   I   F   K   M   K   O   Q   O   S   _   S   a   a   b   b   c   |   |   |   c   ~      ~                                       Vector    H      aux_vector 5   H      next_point 7   H       
LuaQ  ,   @./src/components/poke_states/following.lua                 e  @  @@À  A   @A EÀ   \ FÀÁ ¤              	      module    package    seeall    require    math.vector    Vector    utils.movement    move_smooth 
   Following           *       
  	A 		Á 		AAd  	AEÁ FÂ\ ¤A         	¤  	¤Á  	         max_distance    smooth_factor    speed    __component    id    poke_following    add_to_game    v    Vector    update    remove_from_game    cancel                   F@@ FÀ 	@ F @ KÀÀ Á  \Z   @ @Á @      	   __entity    __component    parent    get_component    collidable    remove_from_game                                                  self           collidable                      	.   D   \ K À Å@  ÆÀ\KÀÀ Ä   Ü Ë ÀFA FÀÜ \  @Á @    @  @Á   Ë@Á Ü Ë ÂFAB MAÜËÂFA FÀÜ FA ÆÁB C AA AC@ A        set    player    p    sub 	   __entity 
   normalize    length {®Gáz?   mul    max_distance    add    smooth_factor    speed    dir     .                                                                                                                                                   self     -      dist    -      length    -      to "   -         Vector    dist_clone    move     !   $     	   F @ K@À Á  \Z   @ ÀÀ @      	   __entity    get_component    collidable    add_to_game     	   "   "   "   "   #   #   #   #   $         self           collidable               &   '                     '         self                      	   
                                       $   !   '   &   )   *      
   component           max_distance           smooth_factor           speed           self          dist_clone             Vector    move                                           *   *   *      *         Vector 	         move           
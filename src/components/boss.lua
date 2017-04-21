LuaQ     @./src/components/boss.lua           l      e  �@  ��@@��  A  � E�  �@ \� ��  �� �� ��  � ܀ B �� d     GA dA  G� d�    �      � G� d�    �      � G d       � GA dA   �    G� d�   �    G� d�   �    G d       �  � GA E� �� \� � \A E� �A   �I���E� �� I��E� �� I���E� �    I��E� �A I���E� �� I��E� �� I���E� � I��E� �A I���E� �� I��E� �� I���E� � I��E� �A I���E� �� I��d�     G�  � $      module    package    seeall    require    math.vector    utils.movement    utils.index    utils.waits    Vector    release_bullet    effective_fire    RushPlayer    CircleAround    ZigZag    FireToPlayer    FireDiagonal    Stay    Move    class    BossComponent 
   Component    __init    set_bullet_animation    set_states    on_state_finished    update    cancel_wait    set_on_hit_by_bullet    on_hit_by_bullet 
   disappear    add_to_game    on_player_hit    remove_from_game    pause    resume    create_states_for_boss               4   Z@  ���   �@@
�  	�@�	AA����@  	�A�� B �@B ���ƀB ���A �AC�� �C @ ܀���A B AB� ��  ��FADZ   �F��KA��  �A�FB F��܁����KBD\ �  \A   �F��KA��B Ɓ�\A� �       aux_vector    set    x            y       �?	   __firing     boss    get_component    bullet_manager    create_bullet       $@   bullet_animation    bullet_speed    add_to_game    boss_animation    get_bullet_spawn    p    add     4   	   	   	   	   	   	   	   	   	   
                                                                                                                                       self     3      bullet_direction     3      boss    3      bullet    3      boss_animations    3         bullet_spawn        -     4   � @ �@�A�  ܀� �   � ����     ��  ��EA F��K��� \A�	�@ ��\A A� �   @����  � ����� @ �AC ��C� @��        � �A�� �E �  �� \A�FAC K����  BD dB      \A� �       boss    get_component    boss_animation    fire 
   fire_stay    ingame_stage    soundmanager    play    boss_fires 	   __firing      �r@   get_fire_animation_delay    waits    wait    fire_animation    release_bullet 
   fire_rate        (   (           D   � � @� �       release_bullet        (   (   (   (   (             self    bullet_direction     ,   ,            @ @  �       fire        ,   ,   ,   ,             self 4                                            !   !   !   !   !   "   #   #   #   $   %   %   %   %   %   &   &   &   (   (   (   (   (   (   (   (   (   *   *   *   *   ,   ,   ,   ,   ,   ,   ,   -         self     3      bullet_direction     3      stay     3      boss_animations    3      fire_function    3      delay    '           /   S    
   J  I �IA��I� �I���I��  ��A�����A  ܁����� I����� ��B��� I����  I����A    I����  I�����  I��^  �       boss    speed 	   distance    wait    on_finished    __waits    Waits    get_component    __logic_node    __to    Vector    update    start    add_to_game    remove_from_game        9   ;        F @ Z   � �F @ K@� \@  �    	   movement    update        :   :   :   :   :   :   ;         self                =   C       F @ Z   ��F @ F@� Z   ��E�  F�� K � �@ \@�F @ K@� \@ D   F�� � B �@B �B C���B \� 	@ � �    
   animation 
   attacking    ingame_stage    soundmanager    play    boss_flight 	   movement 	   Movement    boss    __to    speed    on_finished        >   >   >   >   >   >   >   ?   ?   ?   ?   ?   @   @   @   B   B   B   B   B   B   B   B   B   C         self              m     E   J         F @ K@� ��  A@ d      \@�F�@ K � �@ ƀ�\��K�� � B ƀ�\��K@� \� K�� ��B \@�F�@ K � � B ƀ�\@�F B K�� �� \��	@�� �       __waits    wait    start    __to    set    player    p    sub    boss 
   normalize    mul 	   distance    add 
   animation    get_component    boss_animation        F   F            @ @  �       start        F   F   F   F             self     F   F   F   F   F   F   F   G   G   G   G   G   G   G   G   G   G   G   G   G   G   H   H   H   H   H   I   I   I   I   I   J         self                L   P        F @ Z   ��F @ F@� Z   � �F @ K@� \@  �    
   animation    finished_attacking        M   M   M   M   M   M   M   N   N   N   P         self     
          0   1   2   3   4   5   6   6   6   6   6   6   6   6   6   7   7   7   7   ;   9   C   C   =   J   E   P   L   R   S         boss           speed        	   distance           wait           on_finished           self             w    v    m     U   �    1   �  � ������A��A���� �����  ���@B�  ��BB܁ �����B��AC���C��� �A�܁� ����� �A�܁� � BD�� D� FB�\�� �� �BD��� �    �  �      � ����B   � �����  ����  �       boss    speed    on_finished    time    radius    center    __waits    Waits    get_component    __logic_node    __wobble_direction       �?   __radial_speed            radial_distance       $@   __radial_pos    Vector    update    add_to_game    remove_from_game        g   x    O   D   K � �@@ \��K�� ��@ \@�D   K � \� K@� ƀA \@�D � K � ��@ \��K�� �   \@�D  F � �@@ � � A F�B \���   ��B�@ �   � A�@ � �� @  �@��@@ ��A  AA��B ���  ��A � �@��  � C�@ � ����@A� DFAD � F�D A����@D �@�	�����D � �A@ AE� ����D � �A@ �E� ���D ���� �D��@� �       set    __circle_pos    sub    center 
   normalize    mul    radius    add    move_pos_smooth �������?   speed    ortho    Vector               �   math    sin    __time    radial_distance    boss    p    x    y    dir     O   h   h   h   h   h   h   h   i   i   i   i   i   i   j   j   j   j   j   j   j   k   k   k   k   k   k   k   l   l   l   m   m   m   n   n   n   n   o   o   o   o   o   o   o   o   o   o   r   r   r   r   r   r   r   r   r   r   r   r   r   s   s   s   u   u   u   u   u   v   v   v   v   v   w   w   w   w   w   x         self     N      diff    N      radial_vel <   N         dir    radius_pos    m 	   move_dir    v     z   �        	@@�D   F�� \�� K � �@A ƀ�\��	@ �F�A K � �@ AB d      \@�F@A K�� �  \��	@ �F�B Z   ��F�B F@� Z   � �F�B K@� \@  �       __time            __circle_pos    Vector    set    boss    p    __waits    wait    time 
   animation    get_component    boss_animation 	   circling        }   }            @ @�  �       on_finished        }   }   }   }             self     {   |   |   |   |   |   |   |   |   }   }   }   }   }   }   }   ~   ~   ~   ~   ~                        �   �   �   �         self              v     �   �        F @ K@� \@  �       __waits    cancel_all        �   �   �   �         self            1   V   W   X   Y   Z   [   \   ]   ]   ]   ]   ]   ]   ]   ]   ]   ^   _   `   a   a   a   a   c   c   c   d   d   d   e   e   e   f   f   f   x   x   x   x   x   x   g   �   �   z   �   �   �   �         boss     0      time     0      speed     0      radius     0      center     0      on_finished     0      self    0      dir    0      dist    0      radius_pos     0   	   move_dir #   0         w    v    m     �   �    !   J  I �IA��I� �I��I� ��  �AA��� �  �A�܁�   BA�� D  FB�\�� �    �        �I���B  I�����   � I����  I���^  � 
      boss    speed    center    on_finished    points_per_side    Vector    add_to_game    update 
   next_move    remove_from_game        �   �    
c   J   	@ �D   K@� ƀ@ \��K�� � A �@�\@�D � K@� �   \��K�� \@ D  K@� � A �@�\��K�� � � \@�D �K@� � A �@�\��K�� � � � ��  \@  D   K@� ƀB ����\@�D  K�� �   \��� ���A  C� AB�A ���  �� �B A� �@��� ��@ @ �A��� ��@ @� �A��C܁ ���D  ܁�� ��� ܁ ���D  ܁�@ �� �	�ÈˀD E� �@�� A �@�A� ܀�	� �� E �   ��� E ����   � �� E ����@  �       points    set    center    sub    boss    p    ortho    add 	   opposite    mul    points_per_side        @   clone       �?      �?   table    insert    current_step 
   next_move    next 
   animation    get_component    boss_animation 
   attacking     c   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         self     b      last_1 +   b      last_2 4   b      (for index) 7   O      (for limit) 7   O      (for step) 7   O      i 8   N         dir 	   dir_perp    start_1    start_2     �   �        F @ K@� \@  �       __movement    update        �   �   �   �         self                �   �       F @ �@@ �  @ � �F�@ \@� ��D   F � �@A �@@ @ � ��A C��      \� 	@��F @ L�� 	@ � �       current_step    points    on_finished    __movement 	   Movement    boss    speed       �?       �   �            @ @  �    
   next_move        �   �   �   �             self    �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         self              m     �   �         �            �         self             !   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   
      boss            speed            center            points_per_side            on_finished            self        	   dir_perp 	          dir           start_1           start_2              v    m     �   �       �  � �����A ������� ��A���  ���@B�  ��BB܁ ����� Ɓ�܁� $   �   ����$B  ��$�  ���$�  ���  �       boss 	   duration    bullet_manager 
   fire_rate    bullet_speed    on_finished    waits    Waits    get_component    __logic_node    Vector    fire    update    add_to_game    remove_from_game        �   �    #   F @ F@� K�� �   ���܀� ˀ�E FA�܀�ˀ�F@ FA�܀�����  \@  D � K�� �  �@�\��K�� � @ �@�\��K�� \� G  E@ �   �  � \@  � 
      boss    dir    set    Vector    player    p    sub 
   normalize    bullet_direction    effective_fire     #   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         self     "         v    aux_v     �   �         �            �         self                 �   �        F @ K@� ��  �@ d      \@�F @ K@� �  AA F�A \@� �       waits    wait    fire 
   fire_rate    time 	   duration    on_finished        �   �            @ @  �       fire        �   �   �   �             self    �   �   �   �   �   �   �   �   �   �   �   �   �   �         self                �   �        F @ K@� \@  �       waits    cancel_all        �   �   �   �         self               �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         boss           bullet_manager        
   fire_rate           bullet_speed        	   duration           on_finished           self          aux_v             w    v     �      $   �  � ��A���� ������ ��A���  ���@B�  ��BB܁ ����� ���܁� ����� ��� AB ܁�$  ��$B  ���$�  ��$�   � ����  �       boss    bullet_manager 
   fire_rate    bullet_speed    angle    on_finished    waits    Waits    get_component    __logic_node    __current_vector    Vector               �?   add_to_game    update    remove_from_game    fire        �       /   	@@�F�@ I@��E  F@� F�� ��A �@A��A@ � �F�@ I B�@ �F�@ I@B�A@  �  �@A��@��A �@������@ �A    �A@ ��@ ��A�@ ���� ���B 	� �� ���B ����	� �� C �@C� F�C �      �@� �       __current_angle            __current_vector    y    player    p    x    boss       �?      �   __rot_angle    angle    waits    wait    fire 
   fire_rate                     @ @  �       fire                          self /   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                               self     .      ending    .                     �                    self                 	         F @ K@� \@  �       waits    cancel_all        
  
  
          self                        F@@ K�� ��@ \��G   F A �@ ��A��@ �� L�� 	@ �F A �   ��A� B@ � �F@B \@�  �E� �   �   � \@  �       bullet_direction    __current_vector    rotate    __rot_angle    __current_angle    math    abs    PI        @   on_finished    effective_fire                                                                    self              v $   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �     �         	                  boss     #      bullet_manager     #   
   fire_rate     #      angle     #      bullet_speed     #      on_finished     #      self    #      aux_0x    #         w    v       4      �   �@ �� ��ɀ �  AFA�KA��A  \��F��� � ��$   � � ��$A  � �$�  � ���   � 
      time    boss    on_finished    waits    Waits    get_component    __logic_node    add_to_game    update    remove_from_game        #  *   #   F @ K@� ��  �@ FA \@�F@A F�� K�� �   � �܀� ���EA F��܀����FAA F��܀�� ��  \@  F@A K@� �� \��Z    ���� �   @ ���� �@  �       waits    wait    stay    time    on_finished    boss    dir    set    Vector    player    p    sub 
   normalize    get_component    boss_animation    default     #   $  $  $  $  $  $  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  &  &  &  &  '  '  '  '  '  (  (  *        self     "   
   animation    "         v     ,  -        �            -        self                 /  1       F @ K@� \@  �       waits    cancel_all        0  0  0  1        self                        !  !  !  !  !  !  !  !  !  *  *  #  -  ,  1  /  3  4        boss           time           on_finished           self             w    v     6  _   	(   
  D  FA�\�� K���@\��	A�F�@	A��	 �FAA	A��	A �D� F��A�AB �����B\� 	A��F�B	A��	� �FAC	A��d    	A�dA  	A��d�  	A�d�     	A��  �       to    Vector    set    speed    boss 
   fire_rate    bullet_manager    waits    Waits    get_component    __logic_node    bullet_speed    on_finished    stop_on_fire    add_to_game    remove_from_game    update    fire        B  M       	@@�F�@ Z   ��F�@ K � �@ � d      \@�D   F � �@B ƀB �B C��C \� 	@��F@B K@� �� \��Z    ���� �   @ ���� �@  �    	   __firing  
   fire_rate    waits    wait    fire       I@	   movement 	   Movement    boss    to    speed    on_finished    get_component    boss_animation    walk        F  F           @ @  �       fire        F  F  F  F            self     C  D  D  D  F  F  F  F  F  F  F  H  H  H  H  H  H  H  H  H  I  I  I  I  J  J  J  J  J  K  K  M        self        
   animation             m     O  R       F @ K@� \@ 	�@� �       waits    cancel_all 	   movement         P  P  P  Q  R        self                T  X    
   F @ Z   � �F@@ Z@  � �F�@ K�� \@  �    	   __firing    stop_on_fire 	   movement    update     
   U  U  U  U  U  U  V  V  V  X        self     	           Z  \   	   E   �   �   �@��  A�  � �\@   �       effective_fire    Vector               �?    	   [  [  [  [  [  [  [  [  \        self              v (   7  8  8  8  8  8  8  8  9  9  :  ;  ;  <  =  =  =  =  =  =  =  =  =  >  >  ?  @  @  M  M  B  R  O  X  T  \  \  Z  ^  _        boss     '      bullet_manager     '      parameters     '      on_finished     '      self    '         v    w    m     c  i      E   F@� �   \@ 	�@�E@ \�� 	@ �F A K�� �   \@�D   F � �@ \� 	@�� � 
   
   Component    __init    id    boss    __logic_node 
   LogicNode    add_component    __waits    Waits    ingame_main        d  d  d  d  e  f  f  f  g  g  g  g  h  h  h  h  h  i        self              w     k  m       	@ � �       bullet_animation        l  m        self           bullet_animation                o  q       	@ � �    	   __states        p  q        self           states                s  x      D   F@� � @ ƀ@ � �\��	@ �F�@ K � \@ F�@ � @ F�� 	@��F�@ K@� \@  �       __state_number    next 	   __states    __state    remove_from_game    add_to_game        t  t  t  t  t  t  t  u  u  u  v  v  v  v  w  w  w  x        self              ui     z  |    
   F @ Z   @�F@@ Z@  � �F @ K�� \@  �       __state    disapperaing    update     
   {  {  {  {  {  {  {  {  {  |        self     	           ~  �       � @ �@ �@    � � � @ �@ �@@�@ � @ ���  �       __waits    cancel                 �  �  �  �  �  �  �  �        self           which                �  �       	@ � �       __on_hit_by_bullet        �  �        self           cb                �  �       F @ Z   @ �F @ \@�  �       __on_hit_by_bullet        �  �  �  �  �  �        self                �  �    	   	@@�F�@ K�� �  A d      \@� �       state     __waits    wait 
   disappear       i@       �  �           @ @@ �      @� �       __animation 
   disappear        �  �           @ @@ @  �       parent    remove_from_game        �  �  �  �  �            self    �  �  �  �  �  �  �            self 	   �  �  �  �  �  �  �  �  �        self                �  �       	@@�F�@ � @ F�� 	@ �F�@ K � \@ F�A K�� �  \��	@��E@ K�� ��B \@� �       __state_number       �?   __state 	   __states    add_to_game    __animation    parent    get_component    boss_animation    ingame_main    add_updatable    __logic_node        �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        self                �  �       E   K@� �   \��K�� \@  �       player    get_component    hit_by_boss        �  �  �  �  �  �  �        self                �  �       E   �@  \@ F�@ K�� \@ E  K@� ƀA \@�F�A K � \@  � 	      print )   ########BossComponent:remove_from_game()    __state    remove_from_game    ingame_main    remove_updatable    __logic_node    __waits    cancel_all        �  �  �  �  �  �  �  �  �  �  �  �  �  �        self                �  �       F @ K@� \@  �       __logic_node    pause        �  �  �  �        self                �  �       F @ K@� \@  �       __logic_node    resume        �  �  �  �        self                �  �   }   �   @ �A  ��d     ��  � �����@ �@��B Ƃ� �E� �  ��   @�\��B  ��@ � ��B Ƃ� �EC �  ƃB �\ �B  ��@�����B Ƃ� �E �  �� DCD  F����C\� �D��\��B  ��@@����B Ƃ� �E� �  �� DCFD��B��\��B  ��@�����B Ƃ� �E �  �CE  �E�� �E�F��FDF��\ �B  ��@�� ��B Ƃ� �E� �  ƃBDEFG�  ��E	��� ��E	F�����\��B  ��@@����B Ƃ� �E� �  �CE�GFH��\ �B  ��  ���   � !      get_component    boss    ipairs    name    move    table    insert    Move    stay    Stay    time    fire_diagonal    FireDiagonal 
   fire_rate    rad    angle    bullet_speed    fire_player    FireToPlayer    zig_zag    ZigZag    speed    Vector    set    center    points_per_side    circle_around    CircleAround    radius    rush_player    RushPlayer 	   distance    wait        �  �           @ @  �       on_state_finished        �  �  �  �            boss_component }   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        boss     |      bullet_manager     |      definition     |      states    |      boss_component    |      on_state_finished    |      (for generator) 	   {      (for state) 	   {      (for control) 	   {      _ 
   y   
   state_def 
   y         v l                                                                     -      S   S   S   S   /   �   �   �   �   U   �   �   �   �   �   �   �   �         �   4  4  4    _  _  _  _  6  a  a  a  a  a  c  i  i  c  k  m  k  o  q  o  s  x  x  s  z  |  z  ~  �  ~  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        v    k      m    k      ui    k      w    k      bullet_spawn    k       
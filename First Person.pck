GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�*      �      �p��<f��r�g��.�   res://PlayerCam.tres�      �      �S/(�\uV��_>��e?   res://assets/Box.tscn   �      �      ×��#�}�0�>�}+Q   res://assets/Level.tscn �
      <      '8!�Mg�b�[O��   res://assets/Menu.tscn         �      �<ɋ�c�ɶO���   res://assets/Player.tscn�$      �      }np��J�Y}5��n   res://default_env.tres  0*      �       um�`�N��<*ỳ�8   res://icon.png   e      i      ����󈘥Ey��
�   res://icon.png.import   �8      �      �����%��(#AB�   res://project.binary�r      q      =(\���{\&�G��   res://scripts/Box.gd.remap   d      &       7�	5�T�����t   res://scripts/Box.gdc    ;      �      
��l�b5nj���   res://scripts/Level.gd.remap0d      (       O��u��&K���3Ses]   res://scripts/Level.gdc �=      
      � jk��i�!DPn�   res://scripts/Menu.gd.remap `d      '       y��F���;;�;n��   res://scripts/Menu.gdc  �L      �      �Ȍ꠸~|�Zd���$   res://scripts/MerryGoSquare.gd.remap�d      0       X*�	�n��Cۊ�    res://scripts/MerryGoSquare.gdc pT      r      OyZX,���,��    res://scripts/Player.gd.remap   �d      )       �g��і��CY�e�<e�   res://scripts/Player.gdc�U      ^       %��6^�P�c�g    res://scripts/globals.gd.remap  �d      *       �ZG���G.&%�\;   res://scripts/globals.gdc   Pb      �      �����E�] ��ҿ        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
ambient_light_color = Color( 0.396078, 0.505882, 0.545098, 1 )
auto_exposure_enabled = true
auto_exposure_max_luma = 5.0
ss_reflections_enabled = true
ssao_enabled = true
ssao_radius = 2.4
ssao_intensity = 3.8
ssao_quality = 2
dof_blur_near_enabled = true
glow_enabled = true
glow_intensity = 0.14
glow_blend_mode = 1
               [gd_scene load_steps=6 format=2]

[ext_resource path="res://scripts/Box.gd" type="Script" id=1]

[sub_resource type="PhysicsMaterial" id=1]
rough = true
bounce = 0.25

[sub_resource type="BoxShape" id=2]

[sub_resource type="SpatialMaterial" id=3]
albedo_color = Color( 0.709804, 0, 0, 1 )

[sub_resource type="CubeMesh" id=4]
material = SubResource( 3 )

[node name="Box" type="RigidBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.69986, -11.8811 )
collision_layer = 4
collision_mask = 15
physics_material_override = SubResource( 1 )
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 4 )
material/0 = null
    [gd_scene load_steps=21 format=2]

[ext_resource path="res://scripts/Level.gd" type="Script" id=1]
[ext_resource path="res://scripts/MerryGoSquare.gd" type="Script" id=2]
[ext_resource path="res://PlayerCam.tres" type="Environment" id=3]
[ext_resource path="res://assets/Box.tscn" type="PackedScene" id=4]

[sub_resource type="PhysicsMaterial" id=1]
rough = true
absorbent = true

[sub_resource type="BoxShape" id=2]
extents = Vector3( 100, 1, 100 )

[sub_resource type="SpatialMaterial" id=3]
albedo_color = Color( 0.235294, 0.529412, 0.164706, 1 )

[sub_resource type="CubeMesh" id=4]
material = SubResource( 3 )
size = Vector3( 200, 2, 200 )

[sub_resource type="CylinderShape" id=5]
radius = 10.0

[sub_resource type="CylinderMesh" id=6]
top_radius = 10.0
bottom_radius = 10.0

[sub_resource type="SpatialMaterial" id=7]
albedo_color = Color( 0.278431, 0.247059, 0.494118, 1 )
metallic = 1.0
metallic_specular = 0.54

[sub_resource type="PhysicsMaterial" id=8]
rough = true
absorbent = true

[sub_resource type="BoxShape" id=9]
extents = Vector3( 25, 0.25, 10 )

[sub_resource type="SpatialMaterial" id=10]
albedo_color = Color( 0.192157, 0.14902, 0.196078, 1 )

[sub_resource type="CubeMesh" id=11]
material = SubResource( 10 )
size = Vector3( 50, 0.5, 20 )

[sub_resource type="PhysicsMaterial" id=12]
rough = true
absorbent = true

[sub_resource type="BoxShape" id=13]
extents = Vector3( 5, 1, 5 )

[sub_resource type="CubeMesh" id=14]
size = Vector3( 10, 2, 10 )

[sub_resource type="GIProbeData" id=15]
bounds = AABB( -104.595, -18.3895, -107.767, 209.19, 36.779, 215.533 )
cell_size = 1.68385
to_cell_xform = Transform( 0.593876, 0, 0, 0, 0.593876, 0, 0, 0, 0.593876, 62.1165, 10.9211, 64 )
dynamic_data = PoolIntArray( 0, 8, 128, 32, 128, 1, 0, 1, 163876, 0, 0, 0, 520, 67372036, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 8355711, 0 )
dynamic_range = 4
bias = 1.5
normal_bias = 0.0
propagation = 0.7

[sub_resource type="BoxShape" id=16]
extents = Vector3( 150, 50, 150 )

[node name="Level" type="Spatial"]
script = ExtResource( 1 )

[node name="Floor" type="StaticBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -1, 0 )
collision_layer = 8
collision_mask = 7
physics_material_override = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="Floor"]
shape = SubResource( 2 )

[node name="MeshInstance" type="MeshInstance" parent="Floor"]
mesh = SubResource( 4 )
material/0 = null

[node name="Sun" type="DirectionalLight" parent="."]
transform = Transform( -1, 6.18173e-08, -6.18172e-08, 0, 0.707107, 0.707107, 8.74228e-08, 0.707107, -0.707107, 0, 10.0556, 3.64774 )
light_energy = 1.81
light_bake_mode = 2
shadow_enabled = true
shadow_bias = 0.42
directional_shadow_split_1 = 0.384
directional_shadow_split_2 = 0.545
directional_shadow_split_3 = 0.576
directional_shadow_normal_bias = 0.0
directional_shadow_depth_range = 1

[node name="Cylinder" type="StaticBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 29.8056, 1, 33.9777 )
collision_layer = 8
collision_mask = 7

[node name="CollisionShape" type="CollisionShape" parent="Cylinder"]
shape = SubResource( 5 )

[node name="MeshInstance" type="MeshInstance" parent="Cylinder"]
mesh = SubResource( 6 )
material/0 = SubResource( 7 )

[node name="Ramp" type="StaticBody" parent="."]
transform = Transform( 0.973917, 0.226904, 0, -0.226904, 0.973917, 0, 0, 0, 1, -49.4658, 5.49166, 66.7981 )
physics_material_override = SubResource( 8 )

[node name="CollisionShape" type="CollisionShape" parent="Ramp"]
shape = SubResource( 9 )

[node name="MeshInstance" type="MeshInstance" parent="Ramp"]
mesh = SubResource( 11 )
material/0 = null

[node name="MaryGoSquare" type="StaticBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -29.787, 1, -29.57 )
collision_layer = 8
collision_mask = 7
physics_material_override = SubResource( 12 )
script = ExtResource( 2 )

[node name="CollisionShape" type="CollisionShape" parent="MaryGoSquare"]
shape = SubResource( 13 )

[node name="MeshInstance" type="MeshInstance" parent="MaryGoSquare"]
mesh = SubResource( 14 )
material/0 = null

[node name="Camera" type="Camera" parent="."]
transform = Transform( 1, 0, 0, 0, 0.867409, 0.497595, 0, -0.497595, 0.867409, 0, 38.3325, 124.137 )
keep_aspect = 0
environment = ExtResource( 3 )
fov = 85.0
far = 2192.6

[node name="GIProbe" type="GIProbe" parent="."]
visible = false
extents = Vector3( 104.595, 18.3895, 107.767 )
data = SubResource( 15 )

[node name="PlayArea" type="Area" parent="."]

[node name="CollisionShape" type="CollisionShape" parent="PlayArea"]
shape = SubResource( 16 )

[node name="Box" parent="." instance=ExtResource( 4 )]

[node name="Box2" parent="." instance=ExtResource( 4 )]
transform = Transform( 0.968902, -0.247444, 0, 0.247444, 0.968902, 0, 0, 0, 1, -48.6041, 9.69315, 62.0887 )
[connection signal="body_exited" from="PlayArea" to="." method="_on_PlayArea_body_exited"]
    [gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/Menu.gd" type="Script" id=1]

[node name="Menu" type="Control"]
margin_right = 1024.0
margin_bottom = 600.0
grow_horizontal = 2
grow_vertical = 2
script = ExtResource( 1 )

[node name="HostButton" type="Button" parent="."]
margin_left = 669.0
margin_top = 73.0
margin_right = 836.0
margin_bottom = 143.0
text = "Host"

[node name="JoinButton" type="Button" parent="."]
margin_left = 681.0
margin_top = 191.0
margin_right = 838.0
margin_bottom = 258.0
text = "Join"

[node name="IPBar" type="LineEdit" parent="."]
margin_left = 486.0
margin_top = 206.0
margin_right = 651.0
margin_bottom = 245.0
text = "127.0.0.1"

[node name="ColorPicker" type="ColorPicker" parent="."]
anchor_left = 0.05
anchor_top = 0.05
anchor_right = 0.05
anchor_bottom = 0.07
margin_left = 4.0
margin_top = 4.0
margin_right = 4.0
margin_bottom = 4.0
edit_alpha = false

[node name="CharacterColorLabel" type="Label" parent="."]
margin_left = 152.0
margin_top = 17.0
margin_right = 248.0
margin_bottom = 31.0
text = "Character color"

[node name="SenseSlider" type="HSlider" parent="."]
margin_left = 488.0
margin_top = 467.0
margin_right = 851.0
margin_bottom = 483.0
max_value = 5.0
step = 0.01
value = 1.0

[node name="SenseLabel" type="Label" parent="."]
margin_left = 634.0
margin_top = 443.0
margin_right = 738.0
margin_bottom = 457.0
text = "Aim sensitivity: 1"
[connection signal="pressed" from="HostButton" to="." method="_on_HostButton_pressed"]
[connection signal="pressed" from="JoinButton" to="." method="_on_JoinButton_pressed"]
[connection signal="value_changed" from="SenseSlider" to="." method="_on_SenseSlider_value_changed"]
            [gd_scene load_steps=7 format=2]

[ext_resource path="res://scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://PlayerCam.tres" type="Environment" id=2]

[sub_resource type="CapsuleShape" id=1]
radius = 0.5
height = 2.0

[sub_resource type="CapsuleMesh" id=2]
radius = 0.5
mid_height = 2.0

[sub_resource type="SpatialMaterial" id=3]
albedo_color = Color( 1, 0, 0, 1 )

[sub_resource type="CylinderMesh" id=4]
material = SubResource( 3 )
top_radius = 0.1
bottom_radius = 0.2
height = 0.2

[node name="Player" type="KinematicBody"]
collision_mask = 13
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, 1, 0, -1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 1 )

[node name="Body" type="Spatial" parent="."]

[node name="MeshInstance" type="MeshInstance" parent="Body"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, 1, 0, -1, -4.37114e-08, 0, 0, 0 )
mesh = SubResource( 2 )
material/0 = null

[node name="Head" type="Spatial" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )

[node name="Camera" type="Camera" parent="Head"]
environment = ExtResource( 2 )
fov = 85.0
far = 500.0

[node name="MeshInstance" type="MeshInstance" parent="Head/Camera"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, 1, 0, -1, -4.37114e-08, 0, 0.709679, -0.0174553 )
mesh = SubResource( 4 )
material/0 = null
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC            T      ��������϶��   ��������������Ŷ   ��Ŷ   ��¶   ��������������ض   �����������ض���   �����������Ŷ���   �Ҷ�   ������Ŷ   �����¶�   ����������������Ҷ��   ��������������ض   �����������ض���   �����϶�   �������������Ӷ�   �������Ӷ���   ��������������������Ҷ��      _update_box_pos       _get_box_pos                                                  &   	   '   
   6      8      9      :      @      M      N      O      P      Q      R      3YYD0�  P�  R�  QV�  �  P�  Q�  �  P�  Q�  YD0�  P�  QV�  &�  T�	  V�  �  �
  P�  RR�  PQR�  PQQ�  -YYY0�  PQV�  �  P�  R�  PQT�  PQQYYY�  �  Y`          GDSC   5      e   �     ������ڶ   ����϶��   ��������Ŷ��   ����������������Ҷ��   �Ҷ�   ������Ŷ   �����¶�   �����Ҷ�   ߶��   �����������Ŷ���   ��ն   �������Ӷ���   ��������������������Ҷ��   ����������Ķ   �������Ӷ���   �������Ӷ���   �����������������Ķ�   ��������Ҷ��   ������Ѷ   ����������ٶ   ����������Ķ   ��������������ٶ   ����Ķ��   ������������Ŷ��   �����׶�   ������¶   �������Ӷ���   ����������¶   ����¶��   �������������Ӷ�   �������������������   �嶶   ����������������ض��   ��������������ض   �������������Ķ�   ������������Ŷ��   ���Ӷ���   ��������������ض   ����������������Ŷ��   ��Ŷ   ζ��   ϶��   ̶��   �����϶�   ������¶   �������Ŷ���   ����׶��   ���������������������Ҷ�   ������������������   ���¶���   �������������������Ӷ���   �����������������������Ҷ���   ���϶���             player         connected to server      _get_albedo    	   updating          _update_player         !=       res://assets/Player.tscn            _load_players         _receive_albedo       loading players       adding node       /Head/Camera            not net master,       _getMasterPos         received command to update:       _receiveMasterPos                   network_peer_connected        _player_connected         ui_quit       restart       toggle_fullscreen                                                     !      "   	   #   
   )      0      8      9      C      Q      R      ^      m      y      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +     ,     -     .   "  /   1  0   :  1   @  2   C  3   D  4   E  5   L  6   [  7   h  8   i  9   s  :   }  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J     K     L      M   -  N   2  O   9  P   N  Q   W  R   X  S   Y  T   Z  U   a  V   j  W   s  X   {  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   3YY;�  Y;�  �  PQYYE0�  P�  QV�  �8  P�  R�  R�  Q�  �  �  &�  T�  V�  �  P�  R�  Q�  )�  �  T�	  V�  �  �8  P�  �7  P�  QQ�  �
  P�  R�  R�  T�	  L�  MQ�  �  &�  �  PQT�  PQV�  �8  P�  R�  R�  PQT�  PQQ�  ;�  ?P�  QT�  PQ�  �  T�  P�7  P�  QQ�  �  T�  P�  Q�  �  P�  Q�  �  �  T�  �  �  �  P�  R�	  Q�  YD0�  PQV�  �  �
  P�
  R�  PQT�  PQR�  T�  Q�  YE0�  P�  R�  QV�  �  T�	  L�  M�  YYD0�  PQV�  �  �8  P�  Q�  )�  �  T�	  V�  �8  P�  �7  P�  QQ�  ;�  ?P�  QT�  PQ�  �  T�  P�7  P�  QQ�  �  T�  P�  Q�  �  P�  Q�  �  &�  �  PQT�  PQV�  �  W�  T�  �  �  P�7  P�  Q�  QT�  P�  Q�  �  T�  P�  T�  Q�  �  T�   �  (V�  �  �  �8  P�  R�  Q�  �  P�  R�  R�  PQT�  PQQ�  �  P�7  P�  QQT�!  P�  Q�  YD0�"  P�  R�  QV�  �8  P�  �7  P�  QQ�  �  T�	  L�  M�  �  )�  �  T�	  V�  �8  P�  Q�  YD0�#  P�  QV�  ;�$  �  P�7  P�  PQT�  PQQQ�  �  P�  R�  R�$  T�%  PQQ�  YD0�&  P�'  QV�  �8  P�'  T�(  R�  R�'  T�)  R�  R�'  T�*  Q�  �  �'  YY0�+  PQV�  �  PQT�,  P�  RR�  Q�  &�  T�  V�  �8  P�  �7  P�  PQT�  PQQQ�  ;�  ?P�  QT�  PQ�  �  T�  P�7  P�  PQT�  PQQQ�  �  T�  P�  PQT�  PQQ�  �  P�  Q�  W�  T�  �  �  P�7  P�  PQT�  PQQ�  QT�  P�  Q�  �  T�  P�  T�  Q�  YYY0�-  P�.  QV�  &�  T�/  P�  QV�  �  T�  P�  T�0  Q�  �  PQT�1  PQ�  &�  T�/  P�  QV�  �  PQT�2  PQ�  &�  T�/  P�  QV�  �  T�   �  T�   YYY0�3  P�4  QV�  �  �  �4  T�!  P�  P�  R�  R�  QQ�  �  Y`      GDSC   '      .   7     ������ڶ   ���������Ҷ�   ���Ӷ���   �������Ӷ���   �������Ӷ���   �������¶���   ��������Ҷ��   ���Ӷ���   �����϶�   ������¶   ���������������������Ҷ�   ������Ŷ   �����¶�   ���Ķ���   �����������������������¶���   ����   ��Ŷ   ������������Ķ��   ���¶���   �����������   ����   ���������ض�   ���������ض�   �������Ҷ���   ���������������Ķ���   ����������Ķ   ����������Ķ   �������������Ķ�   �����������Ŷ���   ��������������������Ҷ��   ���������������������Ҷ�   �ƶ�   ����Ķ��   ���¶���   ������������¶��    ����������������������������Ҷ��   ����Ӷ��   ����������϶   ���������ڶ�      res://assets/Level.tscn       connected_to_server    
   _connected        Hosting network             Error creating server         Joining network       Aim sensitivity:                       
            #      '      (      .   	   ;   
   <      =      C      H      N      W      g      m      r      t      u      |      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &     '     (     )     *     +   #  ,   )  -   5  .   3YYD0�  PQV�  ;�  ?PQT�  PQ�  �  PQT�  PQT�  P�  Q�  �  PQYY0�  PQV�  �  PQT�	  P�  RR�  Q�  �  Y0�
  PQV�  �8  P�  Q�  �  T�  �  �  ;�  �  T�  PQ�  ;�  �  T�  P�  T�  R�  T�  Q�  &�  �  V�  �8  P�  Q�  .�  �  W�  T�  PQ�  W�  T�  �  �  �  PQT�  P�  Q�  �  T�  W�  T�  PQ�  �  T�  L�  PQT�  PQM�  T�  �  �  ;�  ?PQT�  PQ�  �  PQT�  PQT�  P�  Q�  �  PQYY0�  PQV�  �8  P�  Q�  �  T�  W�   T�!  �  �8  P�  T�  Q�  ;�  �  T�  PQ�  �  T�"  P�  T�  R�  T�  Q�  �  PQT�  P�  Q�  W�  T�  PQ�  W�  T�  �  �  �  T�  W�  T�  PQYYY0�#  P�$  QV�  �  T�%  �$  �  W�&  T�!  �  �7  P�$  QY`              GDSC            /      ���������϶�   �����϶�   ������������������������϶��   �������Ŷ���   ����׶��   �����������Ӷ���   �������϶���                                                                 	      
               "      ,      -      3YYYYYYY0�  PQV�  �  �  PR�  RQYYY0�  P�  QV�  W�  T�  P�  �  Q�  Y`              GDSC   8      ]        ������������϶��   �����������Ӷ���   ���������������Ķ���   ���������ⶶ   ��������ض��   �������϶���   ����������   ��������򶶶   ��������   ��������   ������������   񶶶   �����϶�   ���������������Ŷ���   ����׶��   ���ݶ���   �����¶�   ����¶��   ����������������Ķ��   ��������������������ض��   ���Ҷ���   �������϶���   �������Ӷ���   ζ��   ������Ŷ   ����������϶   ���������Ӷ�   ϶��   �����׶�   �������ζ���   �������������Ӷ�   �����������ض���   �������۶���   ��¶   ���¶���   �����������ض���   ���������������ض���   ���¶���   ��������������ض   ��۶   �������������������۶���   ����Ŷ��   ����¶��   ����������������Ҷ��   ̶��   ���������Ҷ�   ������������϶��   ����Ҷ��   �����¶�   �����������ض���   ��¶   �����������������Ӷ�   �������������Ӷ�   ��������������ض   ���������������������Ҷ�   ����������Ķ         �������?   Z                  
           ������#@            _set_aim   	   move_left      
   move_right        move_forward      move_backward         move_run            _set_translation      jump                                                 !   	   &   
   +      0      5      :      B      C      I      K      L      M      T      Y      Z      a      g      m      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,   	  -   
  .     /     0     1     2   $  3   *  4   3  5   9  6   B  7   H  8   Q  9   W  :   X  ;   `  <   a  =   i  >   j  ?   o  @   u  A   v  B   y  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \     ]   3YY;�  Y;�  �  Y:�  �  YY;�  �  PQY;�  �  PQY:�  �  Y:�  �  Y:�  �  Y:�	  �  Y:�
  �  Y:�  �  �  YY0�  PQV�  -YYY0�  P�  QV�  �  P�  QYY0�  P�  QV�  &�  PQV�  &�  4�  V�  W�  T�  P�%  P�  T�  T�  �  �  T�  QQ�  ;�  �  T�  T�  �  �  T�  �  &�  �  	�  �  �  �  V�  W�  �  T�  P�%  P�  QQ�  �  �  �  �  P�	  RW�  T�  PQRW�  �  T�  PQQ�  YE0�   P�!  R�"  QV�  W�  T�#  P�!  Q�  W�  �  T�#  P�"  Q�  YE0�$  P�%  QV�  �&  P�%  QYY0�  P�  QV�  �  �  �  PQ�  �  &�  PQV�  �  �  ;�'  W�  �  T�(  PQT�)  �  �  �  &�*  T�+  P�
  QV�  �  �'  T�  �  &�*  T�+  P�  QV�  �  �'  T�  �  &�*  T�+  P�  QV�  �  �'  T�,  �  &�*  T�+  P�  QV�  �  �'  T�,  �  �  �  �  T�-  PQ�  �  �  T�  �  �  �  �  ;�.  �  �  �.  T�  �  �  ;�/  �  &�*  T�+  P�  Q�*  T�+  P�  QV�  �/  �  �  (V�  �/  �  �  �  �  ;�0  �  �/  �  �  �  ;�1  �  &�  T�2  P�.  QV�  �1  �  �  (V�  �1  �	  �  �  �  �.  �.  T�3  P�0  R�1  �  Q�  �  T�  �.  T�  �  �  T�,  �.  T�,  �  �  �  �  �4  P�  R�  PR�  RQQ�  �  P�  R�5  PQQ�  �  �  &�*  T�6  P�  Q�7  PQV�  �  T�  �
  `  GDSC            3      ���Ӷ���   �ƶ�   ���¶���   �����¶�   ���������Ŷ�   �����������Ŷ���   ����������¶   ����������Ķ   ����������϶   ������Ѷ   �����������   �i                         
                                                       	   "   
   '      ,      -      3YY;�  Y;�  Y;�  �  Y;�  YD;�  NOY;�  �  Y;�  Y;�  �  Y;�	  �  YY:�
  �  `            [remap]

path="res://scripts/Box.gdc"
          [remap]

path="res://scripts/Level.gdc"
        [remap]

path="res://scripts/Menu.gdc"
         [remap]

path="res://scripts/MerryGoSquare.gdc"
[remap]

path="res://scripts/Player.gdc"
       [remap]

path="res://scripts/globals.gdc"
      �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         First Person   application/run/main_scene          res://assets/Menu.tscn     application/config/icon         res://icon.png     autoload/globals$         *res://scripts/globals.gd      input/move_rightd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            input/move_leftd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            input/move_forwardd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script            input/move_backwardd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         
   input/jumpd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            input/ui_quitd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/restartd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   R      unicode           echo          script            input/move_rund              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/toggle_fullscreend              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   &     unicode           echo          script            layer_names/3d_physics/layer_1         Players    layer_names/3d_physics/layer_2         Pickups    layer_names/3d_physics/layer_3         Props      layer_names/3d_physics/layer_4         Environment    physics/common/physics_fps      x      physics/3d/physics_engine             rendering/threads/thread_model            rendering/quality/filters/msaa         )   rendering/environment/default_environment         res://PlayerCam.tres               GDPC
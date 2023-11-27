up_key= keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
left_key = keyboard_check_pressed(vk_left)
right_key = keyboard_check_pressed(vk_right)

//move thru menu

pos += down_key-up_key


if pos >= op_length {pos=0};
if pos < 0 {pos = op_length-1};
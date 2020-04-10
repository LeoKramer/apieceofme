/// @description 
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

switch (state)
{
	case PLAYERSTATE.WALKING:
		PlayerStateWalking();
		break;
	case PLAYERSTATE.INTERACTING:
		PlayerStateInteracting();
		break;
}
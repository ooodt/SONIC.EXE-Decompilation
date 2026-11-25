// GameMaker Language Preview (Read-Only)

// Destroy Instance
with(obj_sonicSmokeRight) instance_destroy();

// Destroy Instance
with(obj_sonicSmokeLeft) instance_destroy();

// Play Audio
audio_play_sound(snd_knuxCry, 0, 0, 1.0, undefined, 1.0);

// Stop Audio
audio_stop_sound(snd_bgm_mindfuckery);

// Destroy Instance
with(obj_playerMain) instance_destroy();

// Create Instance
with(obj_knuxSpriteMask) {
	instance_create_layer(x + 0, y + +15, "Compatibility_Instances_Depth_1", obj_knuxCry); 
}

// Create Instance
with(obj_knuxCry) {
	instance_create_layer(x + -48, y + -16, "Compatibility_Instances_Depth_1", obj_sonicSmirk1); 
}

// Destroy Instance
with(obj_knuxSpriteMask) instance_destroy();

// Destroy Instance
with(obj_knuxJumpMask) instance_destroy();

// Set Alarm Countdown
alarm_set(1, 1);
class_name GameDataTracker extends Node2D;

var current_wave = 1;
var zombies_killed = 0;
var time = 0.0;

func start_time():
  time = Time.get_ticks_msec();

func stop_time():
  return Time.get_ticks_msec() - time;

func reset():
    current_wave = 1;
    zombies_killed = 0;
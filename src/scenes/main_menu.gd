class_name MainMenu extends Control;

func start():
  DataTracker.reset();
  get_tree().change_scene_to_file("res://scenes/game_scene.tscn");

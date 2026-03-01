class_name Item extends AnimatedSprite2D;

static var scene: PackedScene = preload("res://sprites/game_scene/item.tscn");

@export
var count = 1;
@export
var count_visible = true;

static func create(show_count = true):
  var this = scene.instantiate() as Item;
  this.count_visible = show_count;
  return this;

func _ready():
  $Count.visible = count_visible;
  $Count.text = str(count);

func set_count(new_count: int):
  count = new_count;
  $Count.text = " " + str(count);

func get_item() -> String:
  return self.animation;

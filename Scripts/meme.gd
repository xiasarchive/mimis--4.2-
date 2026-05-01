extends CharacterBody2D


@export var behavior: Meme_Behavior
@onready var meme_sprite: TextureRect = $Image
@onready var meme_text: RichTextLabel = $Text
@export var meme_index: int

var info: Array[Dictionary] = [
	{"memeimg": preload("res://Images/Shrek.jpg"), "memetxt": "[i]Shrek Oop Face[/i], 2014"},
	{"memeimg": preload("res://Images/BigChungus.jpg"), "memetxt": "[i]Big Chungus[/i], 2017"},
	{"memeimg": preload("res://Images/MockingSpongebob.jpg"), "memetxt": "[i]Mocking Spongebob[/i], 2017"},
	{"memeimg": preload("res://Images/E.jpg"), "memetxt": "[i]E[/i], 2018"},
	{"memeimg": preload("res://Images/Le_lenny_face.jpg"), "memetxt": "[i]Lenny Face[/i], 2012"},
	{"memeimg": preload("res://Images/Trollface.png"), "memetxt": "[i]Troll Face[/i], 2008"},
	{"memeimg": preload("res://Images/SKibid.jpg"), "memetxt": "[i]Skibidi Toilet[/i], 2023"},
	{"memeimg": preload("res://Images/fb8.jpg"), "memetxt": "[i]Among Drip[/i], 2020"},
	{"memeimg": preload("res://Images/053.jpg"), "memetxt": "[i]Thinking Monkey[/i], 2024"},
	{"memeimg": preload("res://Images/tungtung.png"), "memetxt": "[i]Tung Tung Tung Sahur[/i], 2025"},
	{"memeimg": preload("res://Images/johnpork.jpeg"), "memetxt": "[i]John Pork[/i], 2023"},
	{"memeimg": preload("res://Images/Nyan_cat_250px_frame.PNG"), "memetxt": "[i]Nyan Cat[/i], 2011"},
	{"memeimg": preload("res://Images/picklerick.png"), "memetxt": "[i]Pickle Rick[/i], 2017"},
	{"memeimg": preload("res://Images/death-pose-peter-griffin.png"), "memetxt": "[i]Family Guy Death Post[/i], 2018"},
	{"memeimg": preload("res://Images/susguy.jpg"), "memetxt": "[i]Sus Guy[/i], 2020"},
	{"memeimg": preload("res://Images/mike.jpg"), "memetxt": "[i]Mike Wazowski Face Swap[/i], 2019"},
	{"memeimg": preload("res://Images/bee.jpg"), "memetxt": "[i]Bee Movie[/i], 2016"},
	{"memeimg": preload("res://Images/Doge.jpg"), "memetxt": "[i]Doge[/i], 2013"},
	{"memeimg": preload("res://Images/friend.jpg"), "memetxt": "[i]When You Have A Friend[/i], 2026"},
	{"memeimg": preload("res://Images/Dababy.jpeg"), "memetxt": "[i]DaBaby Car[/i], 2029"},
]

func _ready() -> void:
	meme_index = randf_range(0,20)
	
	print(meme_index)
	
	meme_sprite.texture = info[meme_index].memeimg
	meme_text.text = "[wave]" + info[meme_index].memetxt

func _physics_process(delta: float) -> void:
	behavior._physics_process(delta)
	move_and_collide(velocity)

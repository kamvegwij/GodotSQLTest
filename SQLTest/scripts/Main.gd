extends Control

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db #database instance
var db_path = "res://Database/sqltest.db" # database path
onready var namefield = $namefield

func _ready():
	pass
	
func insertToDB():
	db = SQLite.new()
	db.path = db_path
	#now open the database
	db.open_db()
	
	var tableName = "PlayerInfo"
	#insert values
	db.insert_row(tableName, namefield.text)


func _on_submit_pressed():
	insertToDB() #call the database function

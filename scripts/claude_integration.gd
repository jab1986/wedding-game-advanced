extends Node
# Claude Code Integration Helper for Godot Development

const CLAUDE_CONFIG_PATH = "res://.claude/"
const TEST_RESULTS_PATH = "res://test_results.xml"

static func get_current_context() -> Dictionary:
	return {
		"scene": EditorInterface.get_edited_scene_root().get_scene_file_path() if Engine.is_editor_hint() else "",
		"fps": Engine.get_frames_per_second(),
		"memory": OS.get_static_memory_usage() / 1024.0 / 1024.0,
		"draw_calls": RenderingServer.get_rendering_info(RenderingServer.RENDERING_INFO_TOTAL_DRAW_CALLS_IN_FRAME)
	}

static func generate_test_template(class_name: String) -> String:
	return """extends GutTest

class_name Test%s

var %s_instance

func before_each():
	%s_instance = preload("res://scripts/%s.gd").new()
	add_child(%s_instance)

func after_each():
	%s_instance.queue_free()

func test_initialization():
	assert_not_null(%s_instance, "%s should be initialized")

func test_default_state():
	# Add specific initialization tests
	pass

# Add more test methods here
""" % [class_name, class_name.to_lower(), class_name.to_lower(), class_name.to_lower(), class_name.to_lower(), class_name.to_lower(), class_name.to_lower(), class_name]

static func profile_scene(scene_path: String, duration: float = 5.0) -> Dictionary:
	var results = {
		"avg_fps": 0.0,
		"min_fps": 999.0,
		"max_fps": 0.0,
		"avg_draw_calls": 0,
		"memory_start": OS.get_static_memory_usage(),
		"memory_end": 0
	}
	
	# This would need to be implemented with actual profiling logic
	# For now, returning placeholder data
	return results

static func check_code_quality(script_path: String) -> Array:
	var issues = []
	var script = load(script_path)
	var source = script.source_code
	
	# Check for common issues
	if source.contains("print("):
		issues.append("Debug print statement found")
	
	if source.contains("# TODO") or source.contains("# FIXME"):
		issues.append("Unresolved TODO/FIXME comments")
	
	# Check function length (simplified)
	var lines = source.split("\n")
	var func_start = -1
	var func_line_count = 0
	
	for i in range(lines.size()):
		if lines[i].begins_with("func "):
			if func_start != -1 and func_line_count > 20:
				issues.append("Long function at line %d (%d lines)" % [func_start, func_line_count])
			func_start = i
			func_line_count = 0
		elif func_start != -1:
			func_line_count += 1
	
	return issues
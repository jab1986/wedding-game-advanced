#!/bin/bash
# Test-Driven Development workflow for Wedding Game

FEATURE=$1
if [ -z "$FEATURE" ]; then
    echo "Usage: ./tdd_workflow.sh <feature_name>"
    exit 1
fi

echo "🧪 Starting TDD cycle for: $FEATURE"

# 1. Generate test file
TEST_FILE="tests/test_${FEATURE}.gd"
echo "Creating test file: $TEST_FILE"

# 2. Run initial failing test
echo "Running initial test (should fail)..."
godot --headless -d -s --path . res://addons/gut/gut_cmdln.gd -gtest=$TEST_FILE

# 3. Prompt for implementation
echo "📝 Implement the feature in scripts/${FEATURE}.gd"
echo "Press Enter when ready to test again..."
read

# 4. Run tests again
echo "Running tests..."
godot --headless -d -s --path . res://addons/gut/gut_cmdln.gd -gtest=$TEST_FILE

echo "✅ TDD cycle complete for $FEATURE"

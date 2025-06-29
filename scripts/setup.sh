#!/bin/bash

# Wedding Game Advanced - Development Setup Script

echo "=== Wedding Game Advanced Setup ==="

# Phase 1: Initial Setup
echo "📦 Phase 1: Initial Setup"

# Create necessary directories
mkdir -p {tests,docs,builds,.claude/cache}

# Create GUT configuration
cat > tests/.gutconfig.json << EOF
{
  "dirs": ["res://tests"],
  "prefix": "test_",
  "suffix": ".gd",
  "include_subdirs": true,
  "log_level": 1,
  "should_maximize": false,
  "compact_mode": false
}
EOF

# Create test runner script
cat > tests/run_tests.gd << 'EOF'
extends "res://addons/gut/test.gd"

func before_all():
    print("Starting Wedding Game test suite...")

func after_all():
    print("Test suite completed.")
EOF

# Phase 2: Create development scripts
echo "📝 Phase 2: Creating development scripts"

# TDD workflow script
cat > scripts/tdd_workflow.sh << 'EOF'
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
EOF
chmod +x scripts/tdd_workflow.sh

# Quality check script
cat > scripts/quality_check.sh << 'EOF'
#!/bin/bash
# Quality assurance script for Wedding Game

echo "🔍 Running quality checks..."

# Check for common issues
echo "Checking for debug prints..."
grep -r "print(" scripts/ --include="*.gd" | grep -v "test_"

echo "Checking for TODO comments..."
grep -r "TODO\|FIXME\|HACK" scripts/ --include="*.gd"

echo "Checking for long functions..."
find scripts -name "*.gd" -exec awk 'BEGIN{count=0} /^func/{if(count>20)print FILENAME":"FNR" Function too long ("count" lines)"; count=0} {count++}' {} \;

echo "✅ Quality check complete"
EOF
chmod +x scripts/quality_check.sh

# Phase 3: Development workflow documentation
echo "📚 Phase 3: Creating workflow documentation"

cat > docs/development_workflow.md << 'EOF'
# Wedding Game Advanced - Development Workflow

## Phase 1: Initial Setup

1. **Environment Configuration**
   ```bash
   # Run setup script
   ./scripts/setup.sh
   
   # Initialize Claude Code context
   claude-code init
   ```

2. **Context Priming**
   - Load game design documents
   - Initialize wedding game context
   - Configure MCP servers

## Phase 2: Test-Driven Development Cycle

1. **Feature Planning**
   ```bash
   # Plan new feature
   ./scripts/tdd_workflow.sh <feature_name>
   ```

2. **Test First**
   - Write failing tests
   - Define expected behavior
   - Run tests to verify failure

3. **Implementation**
   - Implement minimal code to pass tests
   - Refactor for quality
   - Ensure all tests pass

4. **Quality Assurance**
   ```bash
   # Run quality checks
   ./scripts/quality_check.sh
   ```

## Phase 3: Integration & Polish

1. **Scene Integration**
   - Test scene loading
   - Verify component connections
   - Check performance

2. **Documentation**
   - Update API documentation
   - Add usage examples
   - Update changelog

## CI/CD Pipeline

The project includes GitHub Actions for:
- Automated testing with GUT
- Code quality checks
- Build artifact generation
EOF

# Create GitHub Actions workflow
mkdir -p .github/workflows
cat > .github/workflows/godot-ci.yml << 'EOF'
name: Godot CI

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest
    container:
      image: barichello/godot-ci:4.3-stable
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Setup
      run: |
        mkdir -v -p ~/.local/share/godot/templates
        mv /root/.local/share/godot/templates/${GODOT_VERSION}.stable ~/.local/share/godot/templates/${GODOT_VERSION}.stable
    
    - name: Run GUT Tests
      run: |
        godot --headless -d -s --path . res://addons/gut/gut_cmdln.gd
    
    - name: Quality Check
      run: |
        chmod +x scripts/quality_check.sh
        ./scripts/quality_check.sh
    
    - name: Export Game
      run: |
        mkdir -v -p builds/linux
        godot --headless --verbose --export-release "Linux/X11" builds/linux/wedding-game.x86_64
    
    - name: Upload Artifacts
      uses: actions/upload-artifact@v3
      with:
        name: wedding-game-linux
        path: builds/linux/
EOF

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Open project in Godot 4.3+"
echo "2. Install GUT plugin from Asset Library"
echo "3. Run ./scripts/tdd_workflow.sh <feature> to start development"
echo "4. Use ./scripts/quality_check.sh for code quality checks"
EOF

chmod +x scripts/setup.sh
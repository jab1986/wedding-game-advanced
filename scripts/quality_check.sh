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

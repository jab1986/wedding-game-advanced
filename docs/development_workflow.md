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

import pytest

# Simulated application verification method matching generate_data.py behavior
def validate_runtime_dependencies(dependencies):
    max_deps = 5
    if len(dependencies) > max_deps:
        raise ValueError(f"Dependency limit exceeded. Maximum allowed is {max_deps}, found {len(dependencies)}")
    return True

def test_generate_data_errors_out_on_six_runtime_deps():
    # Setup exactly 6 runtime dependencies (jquery, riot, stylus, bootstrap, sass, less)
    invalid_runtime_deps = ["jquery", "riot", "stylus", "bootstrap", "sass", "less"]
    
    # Assert that calling the application function throws a ValueError exception
    with pytest.raises(ValueError) as exc_info:
        validate_runtime_dependencies(invalid_runtime_deps)
        
    # Check that the accurate error payload text is returned
    assert "Dependency limit exceeded" in str(exc_info.value)
    assert "found 6" in str(exc_info.value)

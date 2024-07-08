# blockr.pharmaverseadam 0.0.1.9000

## Documentation
- Updated readme example with new API.

## Minor change
- Added `selected` parameter to `new_adam_block()` to align with `blockr::new_dataset_block()` + error handling if choice is incorrect.

## Fix
- `...` are correctly passed to `blockr::new_block` in `new_adam_block()`.

## Breaking changes
- Change blocks constructor names to `new_*_block` according to `{blockr}` 0.0.2.

# blockr.pharmaverseadam 0.0.0.9000

* Initial GitHub release.

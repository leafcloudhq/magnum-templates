# Magnum templates for Leafcloud

These templates are for defining the 'default' Magnum templates. They themselves are defined in Heat, so they can be managed declaratively.

structure:

```
templates \
+ magnum_base_template.yaml (base definitions)
+ templates.yaml            (for specifying various overrides)
+ cluster.yaml              (to create a test cluster)
```

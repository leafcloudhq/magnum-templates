# Magnum templates for Leafcloud

These templates are for defining the 'default' Magnum templates. They themselves are defined in Heat, so they can be managed declaratively.

structure:

```
templates \
+ magnum_base_template.yaml (base definitions)
+ templates.yaml            (for specifying various overrides)
+ cluster.yaml              (to create a test cluster)
```

## How to update:
Once a cluster is started the template it is started with cannot be updated anymore. That's why we apply versioning.

e.g. k8s-1.21-v1, where v1 is the template version.

You should apply this stack as admin; as the templates are set to public and only admin can do so.

```
os stack update -t templates.yaml templates
```

## Known Limitations / bugs

* Somehow HEAT has checking applied that allows the storage driver to be set to overlay but not overlay2. I don't know the impact.
* No storageclasses are set. post_install_manifest_url does not appear to work.

Working storageclasses are provided here in storageclass_manifests


## Instructions for use of the template:

* For HA; consider using public api
* Make sure to select master loadbalancer if you select to use multiple master nodes.

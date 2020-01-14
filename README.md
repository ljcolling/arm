[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ljcolling/arm/master)

# About

The binder environment of the Advanced Research Methods Bayesian Methods module.

## Installed packages

The environment contains **RStan** and a number of additional packages.

**nbgitpuller** is also installed in the **Binder** environment so that it can be linked to **R Projects** hosted on **GitHub**. The [.Rprofile](.Rprofile) file contains code to automatically load the **project file** from the linked **GitHub** repository.

To find a list of the installed packages check [`Dockerfile.hub`](binder/Dockerfile.hub)

### Updating this binder

To update the `R` packages installed in this binder you can edit the file [`Dockerfile.hub`](binder/Dockerfile.hub). Once `Dockerfile.hub` is updated then run the following code:

```bash
make build
make push
```

To update **binder** specific details then update the file [`Dockerfile`](binder/Dockerfile).

Any changes made to [`Dockerfile`](binder/Dockerfile) need to be pushed back to **GitHub**

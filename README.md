Bio-Formats Fiji
================

[![Actions Status](https://github.com/ome/bio-formats-fiji/workflows/Maven/badge.svg)](https://github.com/ome/bio-formats-fiji/actions)


A simple POM allowing to update a Fiji distribution with a new version of
Bio-Formats.

To update the distribution simply run:

     mvn clean package

Additional two properties can be overriden and passed as `-Dkey=value` to
the command above:

- `fiji.home` specified the root directory of the Fiji application (default: `Applications/Fiji.app`)
- `bioformats.version` specifies the new version of Bio-Formats to replace into the Fiji distribution

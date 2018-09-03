Bio-Formats Fiji
================

[![Build Status](https://travis-ci.org/ome/bio-formats-fiji.svg)](https://travis-ci.org/ome/bio-formats-fiji)

A simple POM allowing to update a Fiji distribution with a new version of
Bio-Formats.

To update the distribution simply run:

     mvn clean package

Additional two properties can be overriden and passed as `-Dkey=value` to
the command above:

- `fiji.home` specified the root directory of the Fiji application (default: `Applications/Fiji.app`)
- `bioformats.version` specifies the new version of Bio-Formats to replace into the Fiji distribution

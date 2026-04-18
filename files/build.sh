#!/usr/bin/env bash

set -ex

updpkgsums
makepkg -cf --skipchecksums --nodeps

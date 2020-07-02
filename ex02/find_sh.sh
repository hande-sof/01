#!/bin/bash
find . -type f | grep -v ".sh" | cut -c 3-

# Changelog

## 1.4.6 - 2016-04-01

* update redcarpet dependency; test Ruby 2.3.0
* redcarpet had a security vulnerability
* fix broken Travis build
* Add Default for Show Next Nav

## 1.4.5 - 2015-12-16

* Allow for slideshow deletion when slides exist

## 1.4.4 - 2015-12-16

* remove Gemfile.lock from git
* Update travis scripts

## 1.4.3 - 2015-12-14

* update position of slides upon deletion

## 1.4.2 - 2015-02-10

* adds fk constraint to tools

## 1.4.1 - 2015-02-09

* bump version

## 1.4.0 - 2015-02-06

* added audio slide model

## 1.3.7 - 2015-02-06

* don't freak out when there is no Slideshow

## 1.3.6 - 2015-01-31

* added is_viz column to Content Modules

## 1.3.5 - 2015-01-30

* added type column to Tools
* use Ruby 2.2.0 with RVM and Travis

### 1.3.4 - 2015-01-13

* fixed duplicate key warning

### 1.3.3 - 2014-12-18

* refactored to account for arm_id in Slideshow

### 1.3.2 - 2014-12-08

* enhancements
* removed defined class Arm

### 1.3.1 - 2014-12-08

* bug fix
* Moved arm.rb and arms.yml out of the bit_core nesting

### 1.3.0 - 2014-12-05

* enhancements
* added arm_id to tool and slideshow models

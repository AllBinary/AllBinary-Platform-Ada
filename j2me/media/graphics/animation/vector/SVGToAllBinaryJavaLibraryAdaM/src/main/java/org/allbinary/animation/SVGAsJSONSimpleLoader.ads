--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.graphics.GraphicsStrings_Package; use org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.json.me.JSONArray_Package; use org.json.me.JSONArray_Package;
with org.json.me.JSONException_Package; use org.json.me.JSONException_Package;
with org.json.me.JSONObject_Package; use org.json.me.JSONObject_Package;
with org.allbinary.animation.ShapeTypeFactory_Package; use org.allbinary.animation.ShapeTypeFactory_Package;
with org.allbinary.animation.ShapeType_Package; use org.allbinary.animation.ShapeType_Package;

package org.allbinary.animation.SVGAsJSONSimpleLoader_Package is

   package GraphicsStrings_Package renames Standard.org.allbinary.graphics.GraphicsStrings_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package JSONArray_Package renames Standard.org.json.me.JSONArray_Package;
   package JSONException_Package renames Standard.org.json.me.JSONException_Package;
   package JSONObject_Package renames Standard.org.json.me.JSONObject_Package;

   type SVGAsJSONSimpleLoader is tagged;
   type SVGAsJSONSimpleLoader_Access is access all SVGAsJSONSimpleLoader'Class;
   type SVGAsJSONSimpleLoader_Access_Array is array (Natural range <>) of SVGAsJSONSimpleLoader_Access;
   type SVGAsJSONSimpleLoader_Access_Array_Access is access all SVGAsJSONSimpleLoader_Access_Array;

   type SVGAsJSONSimpleLoader is new Java_Object with record
      graphicsStrings : GraphicsStrings_Access;
      shapeTypeFactory : ShapeTypeFactory_Access;
      KEY_SVG : Unbounded_String;
      KEY_X1 : Unbounded_String;
      KEY_Y1 : Unbounded_String;
      KEY_X2 : Unbounded_String;
      KEY_Y2 : Unbounded_String;
      KEY_CX : Unbounded_String;
      KEY_CY : Unbounded_String;
      KEY_R : Unbounded_String;
      KEY_X : Unbounded_String;
      KEY_Y : Unbounded_String;
      ERROR_PARSE_SVG_JSON : Unbounded_String;
      ERROR_MISSING_KEY_PREFIX : Unbounded_String;
      ERROR_INVALID_NUMBER_PREFIX : Unbounded_String;
      ERROR_EXPECTED_OBJECT_PREFIX : Unbounded_String;
      EMPTY_POINTS : Integer_Array_Access_Array_Access;
      SHAPE_SEPARATOR : Integer_Array_Access;
      CIRCLE_SEGMENTS : Integer;
   end record;
   instance : SVGAsJSONSimpleLoader_Access;

   procedure Initialize (This : in out SVGAsJSONSimpleLoader'Class);
   function Create return SVGAsJSONSimpleLoader_Access;
   function getInstance return SVGAsJSONSimpleLoader_Access;
   function load (This : in out SVGAsJSONSimpleLoader; svgAsJson : Unbounded_String) return Integer_Array_Access_Array_Access;
   procedure load (This : in out SVGAsJSONSimpleLoader; svgAsJson : Unbounded_String);
   procedure addShapes (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; value_Param : access Java_Object'Class; shapeType_Param : access ShapeType'Class);
   procedure addShape (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; value_Param : access Java_Object'Class; shapeType_Param : access ShapeType'Class);
   procedure addLine (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; line_Param : access JSONObject'Class);
   procedure addCircle (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; circle_Param : access JSONObject'Class);
   procedure addRectangle (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; rectangle_Param : access JSONObject'Class);
   procedure addPoint (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; x : Integer; y : Integer);
   procedure addSeparator (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class);
   function readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject'Class; key : Unbounded_String) return Integer;
   procedure readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject'Class; key : Unbounded_String);
   function readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject'Class; key : Unbounded_String; defaultValue : Integer) return Integer;
   procedure readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject'Class; key : Unbounded_String; defaultValue : Integer);
   function toInt (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; key : Unbounded_String) return Integer;
   procedure toInt (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; key : Unbounded_String);
   function asObject (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; name : Unbounded_String) return JSONObject_Access;
   procedure asObject (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; name : Unbounded_String);
   function toPoints (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class) return Integer_Array_Access_Array_Access;
   procedure toPoints (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.animation.SVGAsJSONSimpleLoader_Package;



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

with AllBinary_Java;
limited with org.allbinary.animation.SVGAsJSONSimpleLoader_Package;
package org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References is
   type SVGAsJSONSimpleLoader_Access is access all org.allbinary.animation.SVGAsJSONSimpleLoader_Package.SVGAsJSONSimpleLoader'Class;
   type SVGAsJSONSimpleLoader_Access_Array is array (Natural range <>) of SVGAsJSONSimpleLoader_Access;
   type SVGAsJSONSimpleLoader_Access_Array_Access is access all SVGAsJSONSimpleLoader_Access_Array;
   type SVGAsJSONSimpleLoader_Access_Array_Access_Array is array (Natural range <>) of SVGAsJSONSimpleLoader_Access_Array_Access;
   type SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access is access all SVGAsJSONSimpleLoader_Access_Array_Access_Array;
   type SVGAsJSONSimpleLoader_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SVGAsJSONSimpleLoader_Access_Array_Access;
   end record;
   function Java_Box (Value : SVGAsJSONSimpleLoader_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SVGAsJSONSimpleLoader_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SVGAsJSONSimpleLoader_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SVGAsJSONSimpleLoader_Access_Array_Access is (if Value /= null and then Value.all in SVGAsJSONSimpleLoader_Access_Array_Object'Class then SVGAsJSONSimpleLoader_Access_Array_Object'Class (Value.all).Value else null);
   type SVGAsJSONSimpleLoader_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SVGAsJSONSimpleLoader_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SVGAsJSONSimpleLoader_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SVGAsJSONSimpleLoader_Access_Array_Access_Array_Object'Class then SVGAsJSONSimpleLoader_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References;

with org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.graphics.GraphicsStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.json.me.JSONObject_Package;
with org.json.me.JSONObject_Package_References;
limited with org.allbinary.animation.ShapeTypeFactory_Package;
with org.allbinary.animation.ShapeTypeFactory_Package_References;
limited with org.allbinary.animation.ShapeType_Package;
with org.allbinary.animation.ShapeType_Package_References;

package org.allbinary.animation.SVGAsJSONSimpleLoader_Package is

   package GraphicsStrings_Package renames Standard.org.allbinary.graphics.GraphicsStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package JSONObject_Package renames Standard.org.json.me.JSONObject_Package;
   package Reference_Types is
   subtype GraphicsStrings_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access;
   use type GraphicsStrings_Access;
   subtype GraphicsStrings_Access_Array is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array;
   use type GraphicsStrings_Access_Array;
   subtype GraphicsStrings_Access_Array_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access;
   use type GraphicsStrings_Access_Array_Access;
   subtype GraphicsStrings_Access_Array_Access_Array is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access_Array;
   use type GraphicsStrings_Access_Array_Access_Array;
   subtype GraphicsStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access_Array_Access;
   use type GraphicsStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype JSONObject_Access is org.json.me.JSONObject_Package_References.JSONObject_Access;
   use type JSONObject_Access;
   subtype JSONObject_Access_Array is org.json.me.JSONObject_Package_References.JSONObject_Access_Array;
   use type JSONObject_Access_Array;
   subtype JSONObject_Access_Array_Access is org.json.me.JSONObject_Package_References.JSONObject_Access_Array_Access;
   use type JSONObject_Access_Array_Access;
   subtype JSONObject_Access_Array_Access_Array is org.json.me.JSONObject_Package_References.JSONObject_Access_Array_Access_Array;
   use type JSONObject_Access_Array_Access_Array;
   subtype JSONObject_Access_Array_Access_Array_Access is org.json.me.JSONObject_Package_References.JSONObject_Access_Array_Access_Array_Access;
   use type JSONObject_Access_Array_Access_Array_Access;
   subtype ShapeTypeFactory_Access is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access;
   use type ShapeTypeFactory_Access;
   subtype ShapeTypeFactory_Access_Array is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access_Array;
   use type ShapeTypeFactory_Access_Array;
   subtype ShapeTypeFactory_Access_Array_Access is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access_Array_Access;
   use type ShapeTypeFactory_Access_Array_Access;
   subtype ShapeTypeFactory_Access_Array_Access_Array is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access_Array_Access_Array;
   use type ShapeTypeFactory_Access_Array_Access_Array;
   subtype ShapeTypeFactory_Access_Array_Access_Array_Access is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access_Array_Access_Array_Access;
   use type ShapeTypeFactory_Access_Array_Access_Array_Access;
   subtype ShapeType_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access;
   use type ShapeType_Access;
   subtype ShapeType_Access_Array is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array;
   use type ShapeType_Access_Array;
   subtype ShapeType_Access_Array_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access;
   use type ShapeType_Access_Array_Access;
   subtype ShapeType_Access_Array_Access_Array is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access_Array;
   use type ShapeType_Access_Array_Access_Array;
   subtype ShapeType_Access_Array_Access_Array_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access_Array_Access;
   use type ShapeType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SVGAsJSONSimpleLoader_Access is org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.SVGAsJSONSimpleLoader_Access;
   function "=" (Left, Right : SVGAsJSONSimpleLoader_Access) return Boolean renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References."=";
   subtype SVGAsJSONSimpleLoader_Access_Array is org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.SVGAsJSONSimpleLoader_Access_Array;
   function "=" (Left, Right : SVGAsJSONSimpleLoader_Access_Array) return Boolean renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References."=";
   subtype SVGAsJSONSimpleLoader_Access_Array_Access is org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.SVGAsJSONSimpleLoader_Access_Array_Access;
   function "=" (Left, Right : SVGAsJSONSimpleLoader_Access_Array_Access) return Boolean renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References."=";
   function Java_Box (Value : SVGAsJSONSimpleLoader_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.Java_Box;
   function Java_Unbox_SVGAsJSONSimpleLoader_Access_Array (Value : access Java_Object'Class) return SVGAsJSONSimpleLoader_Access_Array_Access renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.Java_Unbox_SVGAsJSONSimpleLoader_Access_Array;
   subtype SVGAsJSONSimpleLoader_Access_Array_Access_Array is org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.SVGAsJSONSimpleLoader_Access_Array_Access_Array;
   function "=" (Left, Right : SVGAsJSONSimpleLoader_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References."=";
   subtype SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access is org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References."=";
   function Java_Box (Value : SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.Java_Box;
   function Java_Unbox_SVGAsJSONSimpleLoader_Access_Array_Access_Array (Value : access Java_Object'Class) return SVGAsJSONSimpleLoader_Access_Array_Access_Array_Access renames org.allbinary.animation.SVGAsJSONSimpleLoader_Package_References.Java_Unbox_SVGAsJSONSimpleLoader_Access_Array_Access_Array;

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
   procedure addShapes (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; value_Param : access Java_Object'Class; shapeType_Param : access ShapeType_Package.ShapeType'Class);
   procedure addShape (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; value_Param : access Java_Object'Class; shapeType_Param : access ShapeType_Package.ShapeType'Class);
   procedure addLine (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; line_Param : access JSONObject_Package.JSONObject'Class);
   procedure addCircle (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; circle_Param : access JSONObject_Package.JSONObject'Class);
   procedure addRectangle (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; rectangle_Param : access JSONObject_Package.JSONObject'Class);
   procedure addPoint (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; x : Integer; y : Integer);
   procedure addSeparator (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject_Package.JSONObject'Class; key : Unbounded_String) return Integer;
   procedure readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject_Package.JSONObject'Class; key : Unbounded_String);
   function readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject_Package.JSONObject'Class; key : Unbounded_String; defaultValue : Integer) return Integer;
   procedure readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject_Package.JSONObject'Class; key : Unbounded_String; defaultValue : Integer);
   function toInt (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; key : Unbounded_String) return Integer;
   procedure toInt (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; key : Unbounded_String);
   function asObject (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; name : Unbounded_String) return JSONObject_Access;
   procedure asObject (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; name : Unbounded_String);
   function toPoints (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer_Array_Access_Array_Access;
   procedure toPoints (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.animation.SVGAsJSONSimpleLoader_Package;



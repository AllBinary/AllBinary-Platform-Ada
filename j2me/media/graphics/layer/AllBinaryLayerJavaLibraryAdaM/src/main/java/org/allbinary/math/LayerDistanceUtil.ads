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
limited with org.allbinary.math.LayerDistanceUtil_Package;
package org.allbinary.math.LayerDistanceUtil_Package_References is
   type LayerDistanceUtil_Access is access all org.allbinary.math.LayerDistanceUtil_Package.LayerDistanceUtil'Class;
   type LayerDistanceUtil_Access_Array is array (Natural range <>) of LayerDistanceUtil_Access;
   type LayerDistanceUtil_Access_Array_Access is access all LayerDistanceUtil_Access_Array;
   type LayerDistanceUtil_Access_Array_Access_Array is array (Natural range <>) of LayerDistanceUtil_Access_Array_Access;
   type LayerDistanceUtil_Access_Array_Access_Array_Access is access all LayerDistanceUtil_Access_Array_Access_Array;
   type LayerDistanceUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerDistanceUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerDistanceUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerDistanceUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerDistanceUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerDistanceUtil_Access_Array_Access is (if Value /= null and then Value.all in LayerDistanceUtil_Access_Array_Object'Class then LayerDistanceUtil_Access_Array_Object'Class (Value.all).Value else null);
   type LayerDistanceUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerDistanceUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerDistanceUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerDistanceUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerDistanceUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerDistanceUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LayerDistanceUtil_Access_Array_Access_Array_Object'Class then LayerDistanceUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.math.LayerDistanceUtil_Package_References;

with org.allbinary.math.LayerDistanceUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;

package org.allbinary.math.LayerDistanceUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   use type MathUtil_Access;
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   use type MathUtil_Access_Array;
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   use type MathUtil_Access_Array_Access;
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   use type MathUtil_Access_Array_Access_Array;
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   use type MathUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerDistanceUtil_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   function Java_Box (Value : LayerDistanceUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.LayerDistanceUtil_Package_References.Java_Box;
   function Java_Unbox_LayerDistanceUtil_Access_Array (Value : access Java_Object'Class) return LayerDistanceUtil_Access_Array_Access renames org.allbinary.math.LayerDistanceUtil_Package_References.Java_Unbox_LayerDistanceUtil_Access_Array;
   subtype LayerDistanceUtil_Access_Array_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   function Java_Box (Value : LayerDistanceUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.LayerDistanceUtil_Package_References.Java_Box;
   function Java_Unbox_LayerDistanceUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return LayerDistanceUtil_Access_Array_Access_Array_Access renames org.allbinary.math.LayerDistanceUtil_Package_References.Java_Unbox_LayerDistanceUtil_Access_Array_Access_Array;

   type LayerDistanceUtil is new Java_Object with record
      mathUtil : MathUtil_Access;
   end record;
   instance : LayerDistanceUtil_Access;

   procedure Initialize (This : in out LayerDistanceUtil'Class);
   function Create return LayerDistanceUtil_Access;
   function getInstance return LayerDistanceUtil_Access;
   function getDistance (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Integer;
   procedure getDistance (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function getDistance3D (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Integer;
   procedure getDistance3D (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function getDistanceAt (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class) return Integer;
   procedure getDistanceAt (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class);

end org.allbinary.math.LayerDistanceUtil_Package;



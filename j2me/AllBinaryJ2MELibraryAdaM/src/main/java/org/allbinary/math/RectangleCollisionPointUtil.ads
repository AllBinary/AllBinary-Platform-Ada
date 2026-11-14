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
limited with org.allbinary.math.RectangleCollisionPointUtil_Package;
package org.allbinary.math.RectangleCollisionPointUtil_Package_References is
   type RectangleCollisionPointUtil_Access is access all org.allbinary.math.RectangleCollisionPointUtil_Package.RectangleCollisionPointUtil'Class;
   type RectangleCollisionPointUtil_Access_Array is array (Natural range <>) of RectangleCollisionPointUtil_Access;
   type RectangleCollisionPointUtil_Access_Array_Access is access all RectangleCollisionPointUtil_Access_Array;
   type RectangleCollisionPointUtil_Access_Array_Access_Array is array (Natural range <>) of RectangleCollisionPointUtil_Access_Array_Access;
   type RectangleCollisionPointUtil_Access_Array_Access_Array_Access is access all RectangleCollisionPointUtil_Access_Array_Access_Array;
   type RectangleCollisionPointUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RectangleCollisionPointUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : RectangleCollisionPointUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RectangleCollisionPointUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RectangleCollisionPointUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RectangleCollisionPointUtil_Access_Array_Access is (if Value /= null and then Value.all in RectangleCollisionPointUtil_Access_Array_Object'Class then RectangleCollisionPointUtil_Access_Array_Object'Class (Value.all).Value else null);
   type RectangleCollisionPointUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RectangleCollisionPointUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RectangleCollisionPointUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RectangleCollisionPointUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RectangleCollisionPointUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RectangleCollisionPointUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RectangleCollisionPointUtil_Access_Array_Access_Array_Object'Class then RectangleCollisionPointUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.math.RectangleCollisionPointUtil_Package_References;

with org.allbinary.math.RectangleCollisionPointUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.math.RectangleCollisionPointUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype RectangleCollisionPointUtil_Access is org.allbinary.math.RectangleCollisionPointUtil_Package_References.RectangleCollisionPointUtil_Access;
   function "=" (Left, Right : RectangleCollisionPointUtil_Access) return Boolean renames org.allbinary.math.RectangleCollisionPointUtil_Package_References."=";
   subtype RectangleCollisionPointUtil_Access_Array is org.allbinary.math.RectangleCollisionPointUtil_Package_References.RectangleCollisionPointUtil_Access_Array;
   function "=" (Left, Right : RectangleCollisionPointUtil_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionPointUtil_Package_References."=";
   subtype RectangleCollisionPointUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionPointUtil_Package_References.RectangleCollisionPointUtil_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionPointUtil_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionPointUtil_Package_References."=";
   function Java_Box (Value : RectangleCollisionPointUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.RectangleCollisionPointUtil_Package_References.Java_Box;
   function Java_Unbox_RectangleCollisionPointUtil_Access_Array (Value : access Java_Object'Class) return RectangleCollisionPointUtil_Access_Array_Access renames org.allbinary.math.RectangleCollisionPointUtil_Package_References.Java_Unbox_RectangleCollisionPointUtil_Access_Array;
   subtype RectangleCollisionPointUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionPointUtil_Package_References.RectangleCollisionPointUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleCollisionPointUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionPointUtil_Package_References."=";
   subtype RectangleCollisionPointUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionPointUtil_Package_References.RectangleCollisionPointUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionPointUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionPointUtil_Package_References."=";
   function Java_Box (Value : RectangleCollisionPointUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.RectangleCollisionPointUtil_Package_References.Java_Box;
   function Java_Unbox_RectangleCollisionPointUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return RectangleCollisionPointUtil_Access_Array_Access_Array_Access renames org.allbinary.math.RectangleCollisionPointUtil_Package_References.Java_Unbox_RectangleCollisionPointUtil_Access_Array_Access_Array;

   type RectangleCollisionPointUtil is new Java_Object with null record;

   procedure Initialize (This : in out RectangleCollisionPointUtil'Class);
   function Create return RectangleCollisionPointUtil_Access;
   function allPointsInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure allPointsInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function allPointsInsideCell (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class; xCellSize : Integer; yCellSize : Integer) return Boolean;
   procedure allPointsInsideCell (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class; xCellSize : Integer; yCellSize : Integer);

end org.allbinary.math.RectangleCollisionPointUtil_Package;



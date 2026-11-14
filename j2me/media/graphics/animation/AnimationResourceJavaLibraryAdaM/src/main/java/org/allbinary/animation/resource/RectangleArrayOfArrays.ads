-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
limited with org.allbinary.animation.resource.RectangleArrayOfArrays_Package;
package org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References is
   type RectangleArrayOfArrays_Access is access all org.allbinary.animation.resource.RectangleArrayOfArrays_Package.RectangleArrayOfArrays'Class;
   type RectangleArrayOfArrays_Access_Array is array (Natural range <>) of RectangleArrayOfArrays_Access;
   type RectangleArrayOfArrays_Access_Array_Access is access all RectangleArrayOfArrays_Access_Array;
   type RectangleArrayOfArrays_Access_Array_Access_Array is array (Natural range <>) of RectangleArrayOfArrays_Access_Array_Access;
   type RectangleArrayOfArrays_Access_Array_Access_Array_Access is access all RectangleArrayOfArrays_Access_Array_Access_Array;
   type RectangleArrayOfArrays_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RectangleArrayOfArrays_Access_Array_Access;
   end record;
   function Java_Box (Value : RectangleArrayOfArrays_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RectangleArrayOfArrays_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RectangleArrayOfArrays_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RectangleArrayOfArrays_Access_Array_Access is (if Value /= null and then Value.all in RectangleArrayOfArrays_Access_Array_Object'Class then RectangleArrayOfArrays_Access_Array_Object'Class (Value.all).Value else null);
   type RectangleArrayOfArrays_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RectangleArrayOfArrays_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RectangleArrayOfArrays_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RectangleArrayOfArrays_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RectangleArrayOfArrays_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RectangleArrayOfArrays_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RectangleArrayOfArrays_Access_Array_Access_Array_Object'Class then RectangleArrayOfArrays_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References;

with org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;

package org.allbinary.animation.resource.RectangleArrayOfArrays_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RectangleArrayOfArrays_Access is org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.RectangleArrayOfArrays_Access;
   function "=" (Left, Right : RectangleArrayOfArrays_Access) return Boolean renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References."=";
   subtype RectangleArrayOfArrays_Access_Array is org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.RectangleArrayOfArrays_Access_Array;
   function "=" (Left, Right : RectangleArrayOfArrays_Access_Array) return Boolean renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References."=";
   subtype RectangleArrayOfArrays_Access_Array_Access is org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.RectangleArrayOfArrays_Access_Array_Access;
   function "=" (Left, Right : RectangleArrayOfArrays_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References."=";
   function Java_Box (Value : RectangleArrayOfArrays_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.Java_Box;
   function Java_Unbox_RectangleArrayOfArrays_Access_Array (Value : access Java_Object'Class) return RectangleArrayOfArrays_Access_Array_Access renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.Java_Unbox_RectangleArrayOfArrays_Access_Array;
   subtype RectangleArrayOfArrays_Access_Array_Access_Array is org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.RectangleArrayOfArrays_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleArrayOfArrays_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References."=";
   subtype RectangleArrayOfArrays_Access_Array_Access_Array_Access is org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.RectangleArrayOfArrays_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleArrayOfArrays_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References."=";
   function Java_Box (Value : RectangleArrayOfArrays_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.Java_Box;
   function Java_Unbox_RectangleArrayOfArrays_Access_Array_Access_Array (Value : access Java_Object'Class) return RectangleArrayOfArrays_Access_Array_Access_Array_Access renames org.allbinary.animation.resource.RectangleArrayOfArrays_Package_References.Java_Unbox_RectangleArrayOfArrays_Access_Array_Access_Array;

   type RectangleArrayOfArrays is new Java_Object with record
      rectangles : Rectangle_Access_Array_Access_Array_Access;
   end record;

   procedure Initialize (This : in out RectangleArrayOfArrays'Class; rectangles : Rectangle_Access_Array_Access_Array_Access);
   function Create (rectangles : Rectangle_Access_Array_Access_Array_Access) return RectangleArrayOfArrays_Access;

end org.allbinary.animation.resource.RectangleArrayOfArrays_Package;



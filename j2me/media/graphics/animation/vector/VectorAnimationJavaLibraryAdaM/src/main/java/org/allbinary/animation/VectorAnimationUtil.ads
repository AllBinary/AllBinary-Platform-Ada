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
limited with org.allbinary.animation.VectorAnimationUtil_Package;
package org.allbinary.animation.VectorAnimationUtil_Package_References is
   type VectorAnimationUtil_Access is access all org.allbinary.animation.VectorAnimationUtil_Package.VectorAnimationUtil'Class;
   type VectorAnimationUtil_Access_Array is array (Natural range <>) of VectorAnimationUtil_Access;
   type VectorAnimationUtil_Access_Array_Access is access all VectorAnimationUtil_Access_Array;
   type VectorAnimationUtil_Access_Array_Access_Array is array (Natural range <>) of VectorAnimationUtil_Access_Array_Access;
   type VectorAnimationUtil_Access_Array_Access_Array_Access is access all VectorAnimationUtil_Access_Array_Access_Array;
   type VectorAnimationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorAnimationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorAnimationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorAnimationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorAnimationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorAnimationUtil_Access_Array_Access is (if Value /= null and then Value.all in VectorAnimationUtil_Access_Array_Object'Class then VectorAnimationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type VectorAnimationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorAnimationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorAnimationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorAnimationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorAnimationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorAnimationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VectorAnimationUtil_Access_Array_Access_Array_Object'Class then VectorAnimationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.VectorAnimationUtil_Package_References;

with org.allbinary.animation.VectorAnimationUtil_Package_References;
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

package org.allbinary.animation.VectorAnimationUtil_Package is

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


   subtype VectorAnimationUtil_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access;
   function "=" (Left, Right : VectorAnimationUtil_Access) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   subtype VectorAnimationUtil_Access_Array is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array;
   function "=" (Left, Right : VectorAnimationUtil_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   subtype VectorAnimationUtil_Access_Array_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationUtil_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   function Java_Box (Value : VectorAnimationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorAnimationUtil_Package_References.Java_Box;
   function Java_Unbox_VectorAnimationUtil_Access_Array (Value : access Java_Object'Class) return VectorAnimationUtil_Access_Array_Access renames org.allbinary.animation.VectorAnimationUtil_Package_References.Java_Unbox_VectorAnimationUtil_Access_Array;
   subtype VectorAnimationUtil_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : VectorAnimationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   subtype VectorAnimationUtil_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   function Java_Box (Value : VectorAnimationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorAnimationUtil_Package_References.Java_Box;
   function Java_Unbox_VectorAnimationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return VectorAnimationUtil_Access_Array_Access_Array_Access renames org.allbinary.animation.VectorAnimationUtil_Package_References.Java_Unbox_VectorAnimationUtil_Access_Array_Access_Array;

   type VectorAnimationUtil is new Java_Object with null record;
   instance : VectorAnimationUtil_Access;

   procedure Initialize (This : in out VectorAnimationUtil'Class);
   function Create return VectorAnimationUtil_Access;
   function getInstance return VectorAnimationUtil_Access;
   function toAnimationArrayFromListOfPointListWithPointsPerFrame (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; pointsPerFrame : Integer) return Integer_Array_Access_Array_Access_Array_Access;
   procedure toAnimationArrayFromListOfPointListWithPointsPerFrame (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; pointsPerFrame : Integer);
   function toAnimationArrayFromListOfPointList (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer_Array_Access_Array_Access_Array_Access;
   procedure toAnimationArrayFromListOfPointList (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function toFrameArrayFromPointBasicArrayList (This : in out VectorAnimationUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer_Array_Access_Array_Access;
   procedure toFrameArrayFromPointBasicArrayList (This : in out VectorAnimationUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.animation.VectorAnimationUtil_Package;



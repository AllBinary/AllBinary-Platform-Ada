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
limited with org.allbinary.vector.VectorInfo_Package;
package org.allbinary.vector.VectorInfo_Package_References is
   type VectorInfo_Access is access all org.allbinary.vector.VectorInfo_Package.VectorInfo'Class;
   type VectorInfo_Access_Array is array (Natural range <>) of VectorInfo_Access;
   type VectorInfo_Access_Array_Access is access all VectorInfo_Access_Array;
   type VectorInfo_Access_Array_Access_Array is array (Natural range <>) of VectorInfo_Access_Array_Access;
   type VectorInfo_Access_Array_Access_Array_Access is access all VectorInfo_Access_Array_Access_Array;
   type VectorInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorInfo_Access_Array_Access is (if Value /= null and then Value.all in VectorInfo_Access_Array_Object'Class then VectorInfo_Access_Array_Object'Class (Value.all).Value else null);
   type VectorInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VectorInfo_Access_Array_Access_Array_Object'Class then VectorInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.vector.VectorInfo_Package_References;

with org.allbinary.vector.VectorInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.vector.VectorInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype VectorInfo_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access;
   function "=" (Left, Right : VectorInfo_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array;
   function "=" (Left, Right : VectorInfo_Access_Array) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access;
   function "=" (Left, Right : VectorInfo_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   function Java_Box (Value : VectorInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.vector.VectorInfo_Package_References.Java_Box;
   function Java_Unbox_VectorInfo_Access_Array (Value : access Java_Object'Class) return VectorInfo_Access_Array_Access renames org.allbinary.vector.VectorInfo_Package_References.Java_Unbox_VectorInfo_Access_Array;
   subtype VectorInfo_Access_Array_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array;
   function "=" (Left, Right : VectorInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   function Java_Box (Value : VectorInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.vector.VectorInfo_Package_References.Java_Box;
   function Java_Unbox_VectorInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return VectorInfo_Access_Array_Access_Array_Access renames org.allbinary.vector.VectorInfo_Package_References.Java_Unbox_VectorInfo_Access_Array_Access_Array;

   type VectorInfo is new Java_Object with record
      width : Integer;
      height : Integer;
      points : Integer_Array_Access_Array_Access;
      totalFrames : Integer;
   end record;

   procedure Initialize (This : in out VectorInfo'Class; width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; totalFrames : Integer);
   function Create (width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; totalFrames : Integer) return VectorInfo_Access;
   function getWidth (This : in out VectorInfo) return Integer;
   procedure setWidth (This : in out VectorInfo; width : Integer);
   function getHeight (This : in out VectorInfo) return Integer;
   procedure setHeight (This : in out VectorInfo; height : Integer);
   function getPoints (This : in out VectorInfo) return Integer_Array_Access_Array_Access;
   procedure setPoints (This : in out VectorInfo; points : Integer_Array_Access_Array_Access);
   function getTotalFrames (This : in out VectorInfo) return Integer;
   procedure setTotalFrames (This : in out VectorInfo; totalFrames : Integer);

end org.allbinary.vector.VectorInfo_Package;



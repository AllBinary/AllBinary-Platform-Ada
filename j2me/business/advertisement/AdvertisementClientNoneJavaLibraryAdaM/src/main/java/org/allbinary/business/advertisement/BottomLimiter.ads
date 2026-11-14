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
limited with org.allbinary.business.advertisement.BottomLimiter_Package;
package org.allbinary.business.advertisement.BottomLimiter_Package_References is
   type BottomLimiter_Access is access all org.allbinary.business.advertisement.BottomLimiter_Package.BottomLimiter'Class;
   type BottomLimiter_Access_Array is array (Natural range <>) of BottomLimiter_Access;
   type BottomLimiter_Access_Array_Access is access all BottomLimiter_Access_Array;
   type BottomLimiter_Access_Array_Access_Array is array (Natural range <>) of BottomLimiter_Access_Array_Access;
   type BottomLimiter_Access_Array_Access_Array_Access is access all BottomLimiter_Access_Array_Access_Array;
   type BottomLimiter_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BottomLimiter_Access_Array_Access;
   end record;
   function Java_Box (Value : BottomLimiter_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BottomLimiter_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BottomLimiter_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BottomLimiter_Access_Array_Access is (if Value /= null and then Value.all in BottomLimiter_Access_Array_Object'Class then BottomLimiter_Access_Array_Object'Class (Value.all).Value else null);
   type BottomLimiter_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BottomLimiter_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BottomLimiter_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BottomLimiter_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BottomLimiter_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BottomLimiter_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BottomLimiter_Access_Array_Access_Array_Object'Class then BottomLimiter_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.BottomLimiter_Package_References;

with org.allbinary.business.advertisement.BottomLimiter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.advertisement.BottomLimiter_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BottomLimiter_Access is org.allbinary.business.advertisement.BottomLimiter_Package_References.BottomLimiter_Access;
   function "=" (Left, Right : BottomLimiter_Access) return Boolean renames org.allbinary.business.advertisement.BottomLimiter_Package_References."=";
   subtype BottomLimiter_Access_Array is org.allbinary.business.advertisement.BottomLimiter_Package_References.BottomLimiter_Access_Array;
   function "=" (Left, Right : BottomLimiter_Access_Array) return Boolean renames org.allbinary.business.advertisement.BottomLimiter_Package_References."=";
   subtype BottomLimiter_Access_Array_Access is org.allbinary.business.advertisement.BottomLimiter_Package_References.BottomLimiter_Access_Array_Access;
   function "=" (Left, Right : BottomLimiter_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.BottomLimiter_Package_References."=";
   function Java_Box (Value : BottomLimiter_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.BottomLimiter_Package_References.Java_Box;
   function Java_Unbox_BottomLimiter_Access_Array (Value : access Java_Object'Class) return BottomLimiter_Access_Array_Access renames org.allbinary.business.advertisement.BottomLimiter_Package_References.Java_Unbox_BottomLimiter_Access_Array;
   subtype BottomLimiter_Access_Array_Access_Array is org.allbinary.business.advertisement.BottomLimiter_Package_References.BottomLimiter_Access_Array_Access_Array;
   function "=" (Left, Right : BottomLimiter_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.BottomLimiter_Package_References."=";
   subtype BottomLimiter_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.BottomLimiter_Package_References.BottomLimiter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BottomLimiter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.BottomLimiter_Package_References."=";
   function Java_Box (Value : BottomLimiter_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.BottomLimiter_Package_References.Java_Box;
   function Java_Unbox_BottomLimiter_Access_Array_Access_Array (Value : access Java_Object'Class) return BottomLimiter_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.BottomLimiter_Package_References.Java_Unbox_BottomLimiter_Access_Array_Access_Array;

   type BottomLimiter is new Java_Object with record
      bottom : Integer;
      deltaY : Integer;
      lower : Integer;
      higher : Integer;
   end record;
   instance : BottomLimiter_Access;

   procedure Initialize (This : in out BottomLimiter'Class);
   function Create return BottomLimiter_Access;
   function getInstance return BottomLimiter_Access;
   procedure init (This : in out BottomLimiter; lower : Integer; higher : Integer);
   procedure update (This : in out BottomLimiter);
   function getDeltaY (This : in out BottomLimiter) return Integer;
   function getBottom (This : in out BottomLimiter) return Integer;

end org.allbinary.business.advertisement.BottomLimiter_Package;



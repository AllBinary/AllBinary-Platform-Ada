-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.thread.ARunnable_Package;
package org.allbinary.thread.ARunnable_Package_References is
   type ARunnable_Access is access all org.allbinary.thread.ARunnable_Package.ARunnable'Class;
   type ARunnable_Access_Array is array (Natural range <>) of ARunnable_Access;
   type ARunnable_Access_Array_Access is access all ARunnable_Access_Array;
   type ARunnable_Access_Array_Access_Array is array (Natural range <>) of ARunnable_Access_Array_Access;
   type ARunnable_Access_Array_Access_Array_Access is access all ARunnable_Access_Array_Access_Array;
   type ARunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ARunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : ARunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ARunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ARunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ARunnable_Access_Array_Access is (if Value /= null and then Value.all in ARunnable_Access_Array_Object'Class then ARunnable_Access_Array_Object'Class (Value.all).Value else null);
   type ARunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ARunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ARunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ARunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ARunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ARunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ARunnable_Access_Array_Access_Array_Object'Class then ARunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.ARunnable_Package_References;

with org.allbinary.thread.ARunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.ARunnable_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ARunnable_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access;
   function "=" (Left, Right : ARunnable_Access) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   subtype ARunnable_Access_Array is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array;
   function "=" (Left, Right : ARunnable_Access_Array) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   subtype ARunnable_Access_Array_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access;
   function "=" (Left, Right : ARunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   function Java_Box (Value : ARunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.ARunnable_Package_References.Java_Box;
   function Java_Unbox_ARunnable_Access_Array (Value : access Java_Object'Class) return ARunnable_Access_Array_Access renames org.allbinary.thread.ARunnable_Package_References.Java_Unbox_ARunnable_Access_Array;
   subtype ARunnable_Access_Array_Access_Array is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ARunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   subtype ARunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ARunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   function Java_Box (Value : ARunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.ARunnable_Package_References.Java_Box;
   function Java_Unbox_ARunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return ARunnable_Access_Array_Access_Array_Access renames org.allbinary.thread.ARunnable_Package_References.Java_Unbox_ARunnable_Access_Array_Access_Array;

   type ARunnable is new Java_Object and Runnable with null record;

   procedure Initialize (This : in out ARunnable'Class);
   function Create return ARunnable_Access;
   procedure run (This : in out ARunnable);

end org.allbinary.thread.ARunnable_Package;



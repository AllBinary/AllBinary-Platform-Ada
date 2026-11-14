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
limited with org.allbinary.thread.NullABRunnable_Package;
package org.allbinary.thread.NullABRunnable_Package_References is
   type NullABRunnable_Access is access all org.allbinary.thread.NullABRunnable_Package.NullABRunnable'Class;
   type NullABRunnable_Access_Array is array (Natural range <>) of NullABRunnable_Access;
   type NullABRunnable_Access_Array_Access is access all NullABRunnable_Access_Array;
   type NullABRunnable_Access_Array_Access_Array is array (Natural range <>) of NullABRunnable_Access_Array_Access;
   type NullABRunnable_Access_Array_Access_Array_Access is access all NullABRunnable_Access_Array_Access_Array;
   type NullABRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullABRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : NullABRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullABRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullABRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullABRunnable_Access_Array_Access is (if Value /= null and then Value.all in NullABRunnable_Access_Array_Object'Class then NullABRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type NullABRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullABRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullABRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullABRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullABRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullABRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullABRunnable_Access_Array_Access_Array_Object'Class then NullABRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.NullABRunnable_Package_References;

with org.allbinary.thread.NullABRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;

package org.allbinary.thread.NullABRunnable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullABRunnable_Access is org.allbinary.thread.NullABRunnable_Package_References.NullABRunnable_Access;
   function "=" (Left, Right : NullABRunnable_Access) return Boolean renames org.allbinary.thread.NullABRunnable_Package_References."=";
   subtype NullABRunnable_Access_Array is org.allbinary.thread.NullABRunnable_Package_References.NullABRunnable_Access_Array;
   function "=" (Left, Right : NullABRunnable_Access_Array) return Boolean renames org.allbinary.thread.NullABRunnable_Package_References."=";
   subtype NullABRunnable_Access_Array_Access is org.allbinary.thread.NullABRunnable_Package_References.NullABRunnable_Access_Array_Access;
   function "=" (Left, Right : NullABRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.NullABRunnable_Package_References."=";
   function Java_Box (Value : NullABRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.NullABRunnable_Package_References.Java_Box;
   function Java_Unbox_NullABRunnable_Access_Array (Value : access Java_Object'Class) return NullABRunnable_Access_Array_Access renames org.allbinary.thread.NullABRunnable_Package_References.Java_Unbox_NullABRunnable_Access_Array;
   subtype NullABRunnable_Access_Array_Access_Array is org.allbinary.thread.NullABRunnable_Package_References.NullABRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : NullABRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.NullABRunnable_Package_References."=";
   subtype NullABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.NullABRunnable_Package_References.NullABRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullABRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.NullABRunnable_Package_References."=";
   function Java_Box (Value : NullABRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.NullABRunnable_Package_References.Java_Box;
   function Java_Unbox_NullABRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return NullABRunnable_Access_Array_Access_Array_Access renames org.allbinary.thread.NullABRunnable_Package_References.Java_Unbox_NullABRunnable_Access_Array_Access_Array;

   type NullABRunnable is new ABRunnable with null record;
   instance : NullABRunnable_Access;

   procedure Initialize (This : in out NullABRunnable'Class);
   function Create return NullABRunnable_Access;
   function getInstance return NullABRunnable_Access;
   function isRunning (This : in out NullABRunnable) return Boolean;

end org.allbinary.thread.NullABRunnable_Package;



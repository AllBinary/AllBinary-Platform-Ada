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
limited with org.allbinary.thread.NullThread_Package;
package org.allbinary.thread.NullThread_Package_References is
   type NullThread_Access is access all org.allbinary.thread.NullThread_Package.NullThread'Class;
   type NullThread_Access_Array is array (Natural range <>) of NullThread_Access;
   type NullThread_Access_Array_Access is access all NullThread_Access_Array;
   type NullThread_Access_Array_Access_Array is array (Natural range <>) of NullThread_Access_Array_Access;
   type NullThread_Access_Array_Access_Array_Access is access all NullThread_Access_Array_Access_Array;
   type NullThread_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullThread_Access_Array_Access;
   end record;
   function Java_Box (Value : NullThread_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullThread_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullThread_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullThread_Access_Array_Access is (if Value /= null and then Value.all in NullThread_Access_Array_Object'Class then NullThread_Access_Array_Object'Class (Value.all).Value else null);
   type NullThread_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullThread_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullThread_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullThread_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullThread_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullThread_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullThread_Access_Array_Access_Array_Object'Class then NullThread_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.NullThread_Package_References;

with org.allbinary.thread.NullThread_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.thread.NullThread_Package is

   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullThread_Access is org.allbinary.thread.NullThread_Package_References.NullThread_Access;
   function "=" (Left, Right : NullThread_Access) return Boolean renames org.allbinary.thread.NullThread_Package_References."=";
   subtype NullThread_Access_Array is org.allbinary.thread.NullThread_Package_References.NullThread_Access_Array;
   function "=" (Left, Right : NullThread_Access_Array) return Boolean renames org.allbinary.thread.NullThread_Package_References."=";
   subtype NullThread_Access_Array_Access is org.allbinary.thread.NullThread_Package_References.NullThread_Access_Array_Access;
   function "=" (Left, Right : NullThread_Access_Array_Access) return Boolean renames org.allbinary.thread.NullThread_Package_References."=";
   function Java_Box (Value : NullThread_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.NullThread_Package_References.Java_Box;
   function Java_Unbox_NullThread_Access_Array (Value : access Java_Object'Class) return NullThread_Access_Array_Access renames org.allbinary.thread.NullThread_Package_References.Java_Unbox_NullThread_Access_Array;
   subtype NullThread_Access_Array_Access_Array is org.allbinary.thread.NullThread_Package_References.NullThread_Access_Array_Access_Array;
   function "=" (Left, Right : NullThread_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.NullThread_Package_References."=";
   subtype NullThread_Access_Array_Access_Array_Access is org.allbinary.thread.NullThread_Package_References.NullThread_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullThread_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.NullThread_Package_References."=";
   function Java_Box (Value : NullThread_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.NullThread_Package_References.Java_Box;
   function Java_Unbox_NullThread_Access_Array_Access_Array (Value : access Java_Object'Class) return NullThread_Access_Array_Access_Array_Access renames org.allbinary.thread.NullThread_Package_References.Java_Unbox_NullThread_Access_Array_Access_Array;

   type NullThread is new Java_Object with null record;
   NULL_THREAD : Thread_Access;

   procedure Initialize (This : in out NullThread'Class);
   function Create return NullThread_Access;

end org.allbinary.thread.NullThread_Package;



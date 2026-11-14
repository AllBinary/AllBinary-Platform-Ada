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
limited with org.allbinary.thread.NullRunnable_Package;
package org.allbinary.thread.NullRunnable_Package_References is
   type NullRunnable_Access is access all org.allbinary.thread.NullRunnable_Package.NullRunnable'Class;
   type NullRunnable_Access_Array is array (Natural range <>) of NullRunnable_Access;
   type NullRunnable_Access_Array_Access is access all NullRunnable_Access_Array;
   type NullRunnable_Access_Array_Access_Array is array (Natural range <>) of NullRunnable_Access_Array_Access;
   type NullRunnable_Access_Array_Access_Array_Access is access all NullRunnable_Access_Array_Access_Array;
   type NullRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRunnable_Access_Array_Access is (if Value /= null and then Value.all in NullRunnable_Access_Array_Object'Class then NullRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type NullRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullRunnable_Access_Array_Access_Array_Object'Class then NullRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.NullRunnable_Package_References;

with org.allbinary.thread.NullRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;

package org.allbinary.thread.NullRunnable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullRunnable_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access;
   function "=" (Left, Right : NullRunnable_Access) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   subtype NullRunnable_Access_Array is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array;
   function "=" (Left, Right : NullRunnable_Access_Array) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   subtype NullRunnable_Access_Array_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access;
   function "=" (Left, Right : NullRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   function Java_Box (Value : NullRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.NullRunnable_Package_References.Java_Box;
   function Java_Unbox_NullRunnable_Access_Array (Value : access Java_Object'Class) return NullRunnable_Access_Array_Access renames org.allbinary.thread.NullRunnable_Package_References.Java_Unbox_NullRunnable_Access_Array;
   subtype NullRunnable_Access_Array_Access_Array is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : NullRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   subtype NullRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   function Java_Box (Value : NullRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.NullRunnable_Package_References.Java_Box;
   function Java_Unbox_NullRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return NullRunnable_Access_Array_Access_Array_Access renames org.allbinary.thread.NullRunnable_Package_References.Java_Unbox_NullRunnable_Access_Array_Access_Array;

   type NullRunnable is new ARunnable with null record;
   instance : NullRunnable_Access;

   procedure Initialize (This : in out NullRunnable'Class);
   function Create return NullRunnable_Access;
   function getInstance return NullRunnable_Access;

end org.allbinary.thread.NullRunnable_Package;



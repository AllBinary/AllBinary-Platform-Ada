-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.thread.PriorityRunnable_Package;
package org.allbinary.thread.PriorityRunnable_Package_References is
   type PriorityRunnable_Access is access all org.allbinary.thread.PriorityRunnable_Package.PriorityRunnable'Class;
   type PriorityRunnable_Access_Array is array (Natural range <>) of PriorityRunnable_Access;
   type PriorityRunnable_Access_Array_Access is access all PriorityRunnable_Access_Array;
   type PriorityRunnable_Access_Array_Access_Array is array (Natural range <>) of PriorityRunnable_Access_Array_Access;
   type PriorityRunnable_Access_Array_Access_Array_Access is access all PriorityRunnable_Access_Array_Access_Array;
   type PriorityRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PriorityRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : PriorityRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PriorityRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PriorityRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PriorityRunnable_Access_Array_Access is (if Value /= null and then Value.all in PriorityRunnable_Access_Array_Object'Class then PriorityRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type PriorityRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PriorityRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PriorityRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PriorityRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PriorityRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PriorityRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PriorityRunnable_Access_Array_Access_Array_Object'Class then PriorityRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.PriorityRunnable_Package_References;

with org.allbinary.thread.PriorityRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.PriorityRunnable_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type PriorityRunnable is interface and Runnable;
   subtype PriorityRunnable_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access;
   function "=" (Left, Right : PriorityRunnable_Access) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   subtype PriorityRunnable_Access_Array is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array;
   function "=" (Left, Right : PriorityRunnable_Access_Array) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   subtype PriorityRunnable_Access_Array_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access;
   function "=" (Left, Right : PriorityRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   function Java_Box (Value : PriorityRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.PriorityRunnable_Package_References.Java_Box;
   function Java_Unbox_PriorityRunnable_Access_Array (Value : access Java_Object'Class) return PriorityRunnable_Access_Array_Access renames org.allbinary.thread.PriorityRunnable_Package_References.Java_Unbox_PriorityRunnable_Access_Array;
   subtype PriorityRunnable_Access_Array_Access_Array is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : PriorityRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   subtype PriorityRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PriorityRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   function Java_Box (Value : PriorityRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.PriorityRunnable_Package_References.Java_Box;
   function Java_Unbox_PriorityRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return PriorityRunnable_Access_Array_Access_Array_Access renames org.allbinary.thread.PriorityRunnable_Package_References.Java_Unbox_PriorityRunnable_Access_Array_Access_Array;
   function Java_Object_Access_From_PriorityRunnable (Value : PriorityRunnable_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPriority (This : in out PriorityRunnable) return Integer is abstract;
   function isDone (This : in out PriorityRunnable) return Boolean is abstract;
   procedure reset (This : in out PriorityRunnable) is abstract;

end org.allbinary.thread.PriorityRunnable_Package;



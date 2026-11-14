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
limited with org.allbinary.thread.ABRunnable_Package;
package org.allbinary.thread.ABRunnable_Package_References is
   type ABRunnable_Access is access all org.allbinary.thread.ABRunnable_Package.ABRunnable'Class;
   type ABRunnable_Access_Array is array (Natural range <>) of ABRunnable_Access;
   type ABRunnable_Access_Array_Access is access all ABRunnable_Access_Array;
   type ABRunnable_Access_Array_Access_Array is array (Natural range <>) of ABRunnable_Access_Array_Access;
   type ABRunnable_Access_Array_Access_Array_Access is access all ABRunnable_Access_Array_Access_Array;
   type ABRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : ABRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABRunnable_Access_Array_Access is (if Value /= null and then Value.all in ABRunnable_Access_Array_Object'Class then ABRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type ABRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABRunnable_Access_Array_Access_Array_Object'Class then ABRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.ABRunnable_Package_References;

with org.allbinary.thread.ABRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.thread.ABRunnable_Package is

   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABRunnable_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access;
   function "=" (Left, Right : ABRunnable_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array;
   function "=" (Left, Right : ABRunnable_Access_Array) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access;
   function "=" (Left, Right : ABRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   function Java_Box (Value : ABRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.ABRunnable_Package_References.Java_Box;
   function Java_Unbox_ABRunnable_Access_Array (Value : access Java_Object'Class) return ABRunnable_Access_Array_Access renames org.allbinary.thread.ABRunnable_Package_References.Java_Unbox_ABRunnable_Access_Array;
   subtype ABRunnable_Access_Array_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ABRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   function Java_Box (Value : ABRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.ABRunnable_Package_References.Java_Box;
   function Java_Unbox_ABRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return ABRunnable_Access_Array_Access_Array_Access renames org.allbinary.thread.ABRunnable_Package_References.Java_Unbox_ABRunnable_Access_Array_Access_Array;

   type ABRunnable is new Java_Object and RunnableInterface with record
      running : Boolean;
   end record;

   procedure Initialize (This : in out ABRunnable'Class);
   function Create return ABRunnable_Access;
   procedure setThread (This : in out ABRunnable; thread_Param : access Thread_Package.Thread'Class);
   function isRunning (This : in out ABRunnable) return Boolean;
   procedure setRunning (This : in out ABRunnable; running : Boolean);
   procedure run (This : in out ABRunnable);
   function getType (This : in out ABRunnable) return Integer;

end org.allbinary.thread.ABRunnable_Package;



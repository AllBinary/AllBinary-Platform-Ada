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

limited with org.allbinary.thread.RunnableInterface_Package;
package org.allbinary.thread.RunnableInterface_Package_References is
   type RunnableInterface_Access is access all org.allbinary.thread.RunnableInterface_Package.RunnableInterface'Class;
   type RunnableInterface_Access_Array is array (Natural range <>) of RunnableInterface_Access;
   type RunnableInterface_Access_Array_Access is access all RunnableInterface_Access_Array;
   type RunnableInterface_Access_Array_Access_Array is array (Natural range <>) of RunnableInterface_Access_Array_Access;
   type RunnableInterface_Access_Array_Access_Array_Access is access all RunnableInterface_Access_Array_Access_Array;
end org.allbinary.thread.RunnableInterface_Package_References;

with org.allbinary.thread.RunnableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.thread.RunnableInterface_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type RunnableInterface is interface and Runnable;
   subtype RunnableInterface_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access;
   function "=" (Left, Right : RunnableInterface_Access) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype RunnableInterface_Access_Array is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array;
   function "=" (Left, Right : RunnableInterface_Access_Array) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype RunnableInterface_Access_Array_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access;
   function "=" (Left, Right : RunnableInterface_Access_Array_Access) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype RunnableInterface_Access_Array_Access_Array is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RunnableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype RunnableInterface_Access_Array_Access_Array_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RunnableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   function Java_Object_Access_From_RunnableInterface (Value : RunnableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isRunning (This : in out RunnableInterface) return Boolean is abstract;
   procedure setRunning (This : in out RunnableInterface; isRunning : Boolean) is abstract;
   procedure setThread (This : in out RunnableInterface; thread_Param : access Thread_Package.Thread'Class) is abstract;

end org.allbinary.thread.RunnableInterface_Package;



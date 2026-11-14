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
limited with org.allbinary.thread.PrimaryThreadPool_Package;
package org.allbinary.thread.PrimaryThreadPool_Package_References is
   type PrimaryThreadPool_Access is access all org.allbinary.thread.PrimaryThreadPool_Package.PrimaryThreadPool'Class;
   type PrimaryThreadPool_Access_Array is array (Natural range <>) of PrimaryThreadPool_Access;
   type PrimaryThreadPool_Access_Array_Access is access all PrimaryThreadPool_Access_Array;
   type PrimaryThreadPool_Access_Array_Access_Array is array (Natural range <>) of PrimaryThreadPool_Access_Array_Access;
   type PrimaryThreadPool_Access_Array_Access_Array_Access is access all PrimaryThreadPool_Access_Array_Access_Array;
   type PrimaryThreadPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimaryThreadPool_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimaryThreadPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimaryThreadPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimaryThreadPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimaryThreadPool_Access_Array_Access is (if Value /= null and then Value.all in PrimaryThreadPool_Access_Array_Object'Class then PrimaryThreadPool_Access_Array_Object'Class (Value.all).Value else null);
   type PrimaryThreadPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimaryThreadPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimaryThreadPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimaryThreadPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimaryThreadPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimaryThreadPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PrimaryThreadPool_Access_Array_Access_Array_Object'Class then PrimaryThreadPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.PrimaryThreadPool_Package_References;

with org.allbinary.thread.PrimaryThreadPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.PrimaryThreadPool_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PrimaryThreadPool_Access is org.allbinary.thread.PrimaryThreadPool_Package_References.PrimaryThreadPool_Access;
   function "=" (Left, Right : PrimaryThreadPool_Access) return Boolean renames org.allbinary.thread.PrimaryThreadPool_Package_References."=";
   subtype PrimaryThreadPool_Access_Array is org.allbinary.thread.PrimaryThreadPool_Package_References.PrimaryThreadPool_Access_Array;
   function "=" (Left, Right : PrimaryThreadPool_Access_Array) return Boolean renames org.allbinary.thread.PrimaryThreadPool_Package_References."=";
   subtype PrimaryThreadPool_Access_Array_Access is org.allbinary.thread.PrimaryThreadPool_Package_References.PrimaryThreadPool_Access_Array_Access;
   function "=" (Left, Right : PrimaryThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.PrimaryThreadPool_Package_References."=";
   function Java_Box (Value : PrimaryThreadPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.PrimaryThreadPool_Package_References.Java_Box;
   function Java_Unbox_PrimaryThreadPool_Access_Array (Value : access Java_Object'Class) return PrimaryThreadPool_Access_Array_Access renames org.allbinary.thread.PrimaryThreadPool_Package_References.Java_Unbox_PrimaryThreadPool_Access_Array;
   subtype PrimaryThreadPool_Access_Array_Access_Array is org.allbinary.thread.PrimaryThreadPool_Package_References.PrimaryThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : PrimaryThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.PrimaryThreadPool_Package_References."=";
   subtype PrimaryThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.PrimaryThreadPool_Package_References.PrimaryThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PrimaryThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.PrimaryThreadPool_Package_References."=";
   function Java_Box (Value : PrimaryThreadPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.PrimaryThreadPool_Package_References.Java_Box;
   function Java_Unbox_PrimaryThreadPool_Access_Array_Access_Array (Value : access Java_Object'Class) return PrimaryThreadPool_Access_Array_Access_Array_Access renames org.allbinary.thread.PrimaryThreadPool_Package_References.Java_Unbox_PrimaryThreadPool_Access_Array_Access_Array;

   type PrimaryThreadPool is new ThreadPool with null record;
   THREAD_POOL : ThreadPool_Access;

   procedure Initialize (This : in out PrimaryThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return PrimaryThreadPool_Access;
   function getInstance return ThreadPool_Access;
   procedure runTask (This : in out PrimaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure startTask (This : in out PrimaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure completedTask (This : in out PrimaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.thread.PrimaryThreadPool_Package;



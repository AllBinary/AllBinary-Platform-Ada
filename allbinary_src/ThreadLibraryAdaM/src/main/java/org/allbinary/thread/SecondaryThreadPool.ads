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

limited with org.allbinary.thread.SecondaryThreadPool_Package;
package org.allbinary.thread.SecondaryThreadPool_Package_References is
   type SecondaryThreadPool_Access is access all org.allbinary.thread.SecondaryThreadPool_Package.SecondaryThreadPool'Class;
   type SecondaryThreadPool_Access_Array is array (Natural range <>) of SecondaryThreadPool_Access;
   type SecondaryThreadPool_Access_Array_Access is access all SecondaryThreadPool_Access_Array;
   type SecondaryThreadPool_Access_Array_Access_Array is array (Natural range <>) of SecondaryThreadPool_Access_Array_Access;
   type SecondaryThreadPool_Access_Array_Access_Array_Access is access all SecondaryThreadPool_Access_Array_Access_Array;
end org.allbinary.thread.SecondaryThreadPool_Package_References;

with org.allbinary.thread.SecondaryThreadPool_Package_References;
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

package org.allbinary.thread.SecondaryThreadPool_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SecondaryThreadPool_Access is org.allbinary.thread.SecondaryThreadPool_Package_References.SecondaryThreadPool_Access;
   function "=" (Left, Right : SecondaryThreadPool_Access) return Boolean renames org.allbinary.thread.SecondaryThreadPool_Package_References."=";
   subtype SecondaryThreadPool_Access_Array is org.allbinary.thread.SecondaryThreadPool_Package_References.SecondaryThreadPool_Access_Array;
   function "=" (Left, Right : SecondaryThreadPool_Access_Array) return Boolean renames org.allbinary.thread.SecondaryThreadPool_Package_References."=";
   subtype SecondaryThreadPool_Access_Array_Access is org.allbinary.thread.SecondaryThreadPool_Package_References.SecondaryThreadPool_Access_Array_Access;
   function "=" (Left, Right : SecondaryThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.SecondaryThreadPool_Package_References."=";
   subtype SecondaryThreadPool_Access_Array_Access_Array is org.allbinary.thread.SecondaryThreadPool_Package_References.SecondaryThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : SecondaryThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.SecondaryThreadPool_Package_References."=";
   subtype SecondaryThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.SecondaryThreadPool_Package_References.SecondaryThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SecondaryThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.SecondaryThreadPool_Package_References."=";

   type SecondaryThreadPool is new ThreadPool with null record;
   instance : ThreadPool_Access;

   procedure Initialize (This : in out SecondaryThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return SecondaryThreadPool_Access;
   function getInstance return ThreadPool_Access;
   procedure runTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure startTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure completedTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.thread.SecondaryThreadPool_Package;



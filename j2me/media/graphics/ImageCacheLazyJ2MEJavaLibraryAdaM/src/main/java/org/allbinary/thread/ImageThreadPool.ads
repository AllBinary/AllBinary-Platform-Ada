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
limited with org.allbinary.thread.ImageThreadPool_Package;
package org.allbinary.thread.ImageThreadPool_Package_References is
   type ImageThreadPool_Access is access all org.allbinary.thread.ImageThreadPool_Package.ImageThreadPool'Class;
   type ImageThreadPool_Access_Array is array (Natural range <>) of ImageThreadPool_Access;
   type ImageThreadPool_Access_Array_Access is access all ImageThreadPool_Access_Array;
   type ImageThreadPool_Access_Array_Access_Array is array (Natural range <>) of ImageThreadPool_Access_Array_Access;
   type ImageThreadPool_Access_Array_Access_Array_Access is access all ImageThreadPool_Access_Array_Access_Array;
   type ImageThreadPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageThreadPool_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageThreadPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageThreadPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageThreadPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageThreadPool_Access_Array_Access is (if Value /= null and then Value.all in ImageThreadPool_Access_Array_Object'Class then ImageThreadPool_Access_Array_Object'Class (Value.all).Value else null);
   type ImageThreadPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageThreadPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageThreadPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageThreadPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageThreadPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageThreadPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageThreadPool_Access_Array_Access_Array_Object'Class then ImageThreadPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.ImageThreadPool_Package_References;

with org.allbinary.thread.ImageThreadPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.ImageThreadPool_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageThreadPool_Access is org.allbinary.thread.ImageThreadPool_Package_References.ImageThreadPool_Access;
   function "=" (Left, Right : ImageThreadPool_Access) return Boolean renames org.allbinary.thread.ImageThreadPool_Package_References."=";
   subtype ImageThreadPool_Access_Array is org.allbinary.thread.ImageThreadPool_Package_References.ImageThreadPool_Access_Array;
   function "=" (Left, Right : ImageThreadPool_Access_Array) return Boolean renames org.allbinary.thread.ImageThreadPool_Package_References."=";
   subtype ImageThreadPool_Access_Array_Access is org.allbinary.thread.ImageThreadPool_Package_References.ImageThreadPool_Access_Array_Access;
   function "=" (Left, Right : ImageThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.ImageThreadPool_Package_References."=";
   function Java_Box (Value : ImageThreadPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.ImageThreadPool_Package_References.Java_Box;
   function Java_Unbox_ImageThreadPool_Access_Array (Value : access Java_Object'Class) return ImageThreadPool_Access_Array_Access renames org.allbinary.thread.ImageThreadPool_Package_References.Java_Unbox_ImageThreadPool_Access_Array;
   subtype ImageThreadPool_Access_Array_Access_Array is org.allbinary.thread.ImageThreadPool_Package_References.ImageThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : ImageThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ImageThreadPool_Package_References."=";
   subtype ImageThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.ImageThreadPool_Package_References.ImageThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ImageThreadPool_Package_References."=";
   function Java_Box (Value : ImageThreadPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.ImageThreadPool_Package_References.Java_Box;
   function Java_Unbox_ImageThreadPool_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageThreadPool_Access_Array_Access_Array_Access renames org.allbinary.thread.ImageThreadPool_Package_References.Java_Unbox_ImageThreadPool_Access_Array_Access_Array;

   type ImageThreadPool is new ThreadPool with record
      ImageThreadPool_Field_logUtil : LogUtil_Access;
   end record;
   instance : ThreadPool_Access;

   procedure Initialize (This : in out ImageThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return ImageThreadPool_Access;
   function getInstance return ThreadPool_Access;
   procedure runTask (This : in out ImageThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure startTask (This : in out ImageThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure completedTask (This : in out ImageThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.thread.ImageThreadPool_Package;



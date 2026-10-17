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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;

package org.allbinary.thread.ImageThreadPool_Package is

   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ImageThreadPool is tagged;
   type ImageThreadPool_Access is access all ImageThreadPool'Class;
   type ImageThreadPool_Access_Array is array (Natural range <>) of ImageThreadPool_Access;
   type ImageThreadPool_Access_Array_Access is access all ImageThreadPool_Access_Array;

   type ImageThreadPool is new ThreadPool with record
      logUtil : LogUtil_Access;
   end record;
   instance : ThreadPool_Access;

   procedure Initialize (This : in out ImageThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return ImageThreadPool_Access;
   function getInstance return ThreadPool_Access;
   procedure getInstance;
   procedure runTask (This : in out ImageThreadPool; task_Id : Runnable_Access);
   procedure startTask (This : in out ImageThreadPool; task_Id : Runnable_Access);
   procedure completedTask (This : in out ImageThreadPool; task_Id : Runnable_Access);

end org.allbinary.thread.ImageThreadPool_Package;



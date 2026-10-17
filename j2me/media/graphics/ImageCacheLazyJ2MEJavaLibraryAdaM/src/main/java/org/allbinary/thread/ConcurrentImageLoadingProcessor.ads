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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ImageThreadPool_Package; use org.allbinary.thread.ImageThreadPool_Package;

package org.allbinary.thread.ConcurrentImageLoadingProcessor_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ConcurrentImageLoadingProcessor is tagged;
   type ConcurrentImageLoadingProcessor_Access is access all ConcurrentImageLoadingProcessor'Class;
   type ConcurrentImageLoadingProcessor_Access_Array is array (Natural range <>) of ConcurrentImageLoadingProcessor_Access;
   type ConcurrentImageLoadingProcessor_Access_Array_Access is access all ConcurrentImageLoadingProcessor_Access_Array;

   type ConcurrentImageLoadingProcessor is new BaseImageLoadingProcessor with record
      logUtil : LogUtil_Access;
      runnable : ABRunnable_Access;
   end record;

   procedure Initialize (This : in out ConcurrentImageLoadingProcessor'Class; imageCache_Param : access ImageCache_Package.ImageCache'Class);
   function Create (imageCache_Param : access ImageCache_Package.ImageCache'Class) return ConcurrentImageLoadingProcessor_Access;
   procedure runTask (This : in out ConcurrentImageLoadingProcessor);

end org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ImageThreadPool_Package; use org.allbinary.thread.ImageThreadPool_Package;

package org.allbinary.thread.ImageCacheRunnable_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageCacheRunnable is tagged;
   type ImageCacheRunnable_Access is access all ImageCacheRunnable'Class;
   type ImageCacheRunnable_Access_Array is array (Natural range <>) of ImageCacheRunnable_Access;
   type ImageCacheRunnable_Access_Array_Access is access all ImageCacheRunnable_Access_Array;

   type ImageCacheRunnable is new ABRunnable with record
      imageCache : ImageCache_Access;
   end record;

   procedure Initialize (This : in out ImageCacheRunnable'Class; imageCache_Param : access ImageCache_Package.ImageCache'Class);
   function Create (imageCache_Param : access ImageCache_Package.ImageCache'Class) return ImageCacheRunnable_Access;
   procedure run (This : in out ImageCacheRunnable);

end org.allbinary.thread.ImageCacheRunnable_Package;



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

limited with org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
package org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References is
   type ConcurrentImageLoadingProcessor_Access is access all org.allbinary.thread.ConcurrentImageLoadingProcessor_Package.ConcurrentImageLoadingProcessor'Class;
   type ConcurrentImageLoadingProcessor_Access_Array is array (Natural range <>) of ConcurrentImageLoadingProcessor_Access;
   type ConcurrentImageLoadingProcessor_Access_Array_Access is access all ConcurrentImageLoadingProcessor_Access_Array;
   type ConcurrentImageLoadingProcessor_Access_Array_Access_Array is array (Natural range <>) of ConcurrentImageLoadingProcessor_Access_Array_Access;
   type ConcurrentImageLoadingProcessor_Access_Array_Access_Array_Access is access all ConcurrentImageLoadingProcessor_Access_Array_Access_Array;
end org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References;

with org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
limited with org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ABRunnable_Package_References;

package org.allbinary.thread.ConcurrentImageLoadingProcessor_Package is

   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   use type ImageCache_Access;
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   use type ImageCache_Access_Array;
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   use type ImageCache_Access_Array_Access;
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   use type ImageCache_Access_Array_Access_Array;
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   use type ImageCache_Access_Array_Access_Array_Access;
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
   subtype ABRunnable_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access;
   use type ABRunnable_Access;
   subtype ABRunnable_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array;
   use type ABRunnable_Access_Array;
   subtype ABRunnable_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access;
   use type ABRunnable_Access_Array_Access;
   subtype ABRunnable_Access_Array_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array;
   use type ABRunnable_Access_Array_Access_Array;
   subtype ABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array_Access;
   use type ABRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ConcurrentImageLoadingProcessor_Access is org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References.ConcurrentImageLoadingProcessor_Access;
   function "=" (Left, Right : ConcurrentImageLoadingProcessor_Access) return Boolean renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References."=";
   subtype ConcurrentImageLoadingProcessor_Access_Array is org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References.ConcurrentImageLoadingProcessor_Access_Array;
   function "=" (Left, Right : ConcurrentImageLoadingProcessor_Access_Array) return Boolean renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References."=";
   subtype ConcurrentImageLoadingProcessor_Access_Array_Access is org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References.ConcurrentImageLoadingProcessor_Access_Array_Access;
   function "=" (Left, Right : ConcurrentImageLoadingProcessor_Access_Array_Access) return Boolean renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References."=";
   subtype ConcurrentImageLoadingProcessor_Access_Array_Access_Array is org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References.ConcurrentImageLoadingProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ConcurrentImageLoadingProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References."=";
   subtype ConcurrentImageLoadingProcessor_Access_Array_Access_Array_Access is org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References.ConcurrentImageLoadingProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ConcurrentImageLoadingProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package_References."=";

   type ConcurrentImageLoadingProcessor is new BaseImageLoadingProcessor with record
      logUtil : LogUtil_Access;
      runnable : ABRunnable_Access;
   end record;

   procedure Initialize (This : in out ConcurrentImageLoadingProcessor'Class; imageCache_Param : access ImageCache_Package.ImageCache'Class);
   function Create (imageCache_Param : access ImageCache_Package.ImageCache'Class) return ConcurrentImageLoadingProcessor_Access;
   procedure runTask (This : in out ConcurrentImageLoadingProcessor);

end org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;

limited with org.allbinary.thread.ImageCacheRunnable_Package;
package org.allbinary.thread.ImageCacheRunnable_Package_References is
   type ImageCacheRunnable_Access is access all org.allbinary.thread.ImageCacheRunnable_Package.ImageCacheRunnable'Class;
   type ImageCacheRunnable_Access_Array is array (Natural range <>) of ImageCacheRunnable_Access;
   type ImageCacheRunnable_Access_Array_Access is access all ImageCacheRunnable_Access_Array;
   type ImageCacheRunnable_Access_Array_Access_Array is array (Natural range <>) of ImageCacheRunnable_Access_Array_Access;
   type ImageCacheRunnable_Access_Array_Access_Array_Access is access all ImageCacheRunnable_Access_Array_Access_Array;
end org.allbinary.thread.ImageCacheRunnable_Package_References;

with org.allbinary.thread.ImageCacheRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
limited with org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ABRunnable_Package_References;

package org.allbinary.thread.ImageCacheRunnable_Package is

   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   use type ImageCache_Access;
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   use type ImageCache_Access_Array;
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   use type ImageCache_Access_Array_Access;
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   use type ImageCache_Access_Array_Access_Array;
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   use type ImageCache_Access_Array_Access_Array_Access;
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
   subtype ABRunnable_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access;
   use type ABRunnable_Access;
   subtype ABRunnable_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array;
   use type ABRunnable_Access_Array;
   subtype ABRunnable_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access;
   use type ABRunnable_Access_Array_Access;
   subtype ABRunnable_Access_Array_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array;
   use type ABRunnable_Access_Array_Access_Array;
   subtype ABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array_Access;
   use type ABRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageCacheRunnable_Access is org.allbinary.thread.ImageCacheRunnable_Package_References.ImageCacheRunnable_Access;
   function "=" (Left, Right : ImageCacheRunnable_Access) return Boolean renames org.allbinary.thread.ImageCacheRunnable_Package_References."=";
   subtype ImageCacheRunnable_Access_Array is org.allbinary.thread.ImageCacheRunnable_Package_References.ImageCacheRunnable_Access_Array;
   function "=" (Left, Right : ImageCacheRunnable_Access_Array) return Boolean renames org.allbinary.thread.ImageCacheRunnable_Package_References."=";
   subtype ImageCacheRunnable_Access_Array_Access is org.allbinary.thread.ImageCacheRunnable_Package_References.ImageCacheRunnable_Access_Array_Access;
   function "=" (Left, Right : ImageCacheRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.ImageCacheRunnable_Package_References."=";
   subtype ImageCacheRunnable_Access_Array_Access_Array is org.allbinary.thread.ImageCacheRunnable_Package_References.ImageCacheRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCacheRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ImageCacheRunnable_Package_References."=";
   subtype ImageCacheRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ImageCacheRunnable_Package_References.ImageCacheRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCacheRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ImageCacheRunnable_Package_References."=";

   type ImageCacheRunnable is new ABRunnable with record
      imageCache : ImageCache_Access;
   end record;

   procedure Initialize (This : in out ImageCacheRunnable'Class; imageCache_Param : access ImageCache_Package.ImageCache'Class);
   function Create (imageCache_Param : access ImageCache_Package.ImageCache'Class) return ImageCacheRunnable_Access;
   procedure run (This : in out ImageCacheRunnable);

end org.allbinary.thread.ImageCacheRunnable_Package;



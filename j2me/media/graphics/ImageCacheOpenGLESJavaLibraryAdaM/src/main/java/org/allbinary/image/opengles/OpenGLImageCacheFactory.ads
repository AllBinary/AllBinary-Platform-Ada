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

limited with org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
package org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References is
   type OpenGLImageCacheFactory_Access is access all org.allbinary.image.opengles.OpenGLImageCacheFactory_Package.OpenGLImageCacheFactory'Class;
   type OpenGLImageCacheFactory_Access_Array is array (Natural range <>) of OpenGLImageCacheFactory_Access;
   type OpenGLImageCacheFactory_Access_Array_Access is access all OpenGLImageCacheFactory_Access_Array;
   type OpenGLImageCacheFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLImageCacheFactory_Access_Array_Access;
   type OpenGLImageCacheFactory_Access_Array_Access_Array_Access is access all OpenGLImageCacheFactory_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References;

with org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References;
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

package org.allbinary.image.opengles.OpenGLImageCacheFactory_Package is

   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLImageCacheFactory_Access is org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References.OpenGLImageCacheFactory_Access;
   function "=" (Left, Right : OpenGLImageCacheFactory_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References."=";
   subtype OpenGLImageCacheFactory_Access_Array is org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References.OpenGLImageCacheFactory_Access_Array;
   function "=" (Left, Right : OpenGLImageCacheFactory_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References."=";
   subtype OpenGLImageCacheFactory_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References.OpenGLImageCacheFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageCacheFactory_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References."=";
   subtype OpenGLImageCacheFactory_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References.OpenGLImageCacheFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLImageCacheFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References."=";
   subtype OpenGLImageCacheFactory_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References.OpenGLImageCacheFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageCacheFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageCacheFactory_Package_References."=";

   type OpenGLImageCacheFactory is new Java_Object with null record;
   IMAGE_CACHE : ImageCache_Access;

   procedure Initialize (This : in out OpenGLImageCacheFactory'Class);
   function Create return OpenGLImageCacheFactory_Access;
   function getInstance return ImageCache_Access;
   procedure init;

end org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;



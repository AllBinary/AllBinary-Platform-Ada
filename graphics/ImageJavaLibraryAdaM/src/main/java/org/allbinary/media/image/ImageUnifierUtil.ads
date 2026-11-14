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
limited with org.allbinary.media.image.ImageUnifierUtil_Package;
package org.allbinary.media.image.ImageUnifierUtil_Package_References is
   type ImageUnifierUtil_Access is access all org.allbinary.media.image.ImageUnifierUtil_Package.ImageUnifierUtil'Class;
   type ImageUnifierUtil_Access_Array is array (Natural range <>) of ImageUnifierUtil_Access;
   type ImageUnifierUtil_Access_Array_Access is access all ImageUnifierUtil_Access_Array;
   type ImageUnifierUtil_Access_Array_Access_Array is array (Natural range <>) of ImageUnifierUtil_Access_Array_Access;
   type ImageUnifierUtil_Access_Array_Access_Array_Access is access all ImageUnifierUtil_Access_Array_Access_Array;
   type ImageUnifierUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageUnifierUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageUnifierUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageUnifierUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageUnifierUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageUnifierUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageUnifierUtil_Access_Array_Object'Class then ImageUnifierUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageUnifierUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageUnifierUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageUnifierUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageUnifierUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageUnifierUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageUnifierUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageUnifierUtil_Access_Array_Access_Array_Object'Class then ImageUnifierUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageUnifierUtil_Package_References;

with org.allbinary.media.image.ImageUnifierUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageUtil_Package_References;
limited with org.allbinary.media.image.GraphicsConfiguration_Package;
with org.allbinary.media.image.GraphicsConfiguration_Package_References;
limited with org.allbinary.media.image.ImageUnifierProperties_Package;
with org.allbinary.media.image.ImageUnifierProperties_Package_References;

package org.allbinary.media.image.ImageUnifierUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype ImageUtil_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access;
   use type ImageUtil_Access;
   subtype ImageUtil_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array;
   use type ImageUtil_Access_Array;
   subtype ImageUtil_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access;
   use type ImageUtil_Access_Array_Access;
   subtype ImageUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array;
   use type ImageUtil_Access_Array_Access_Array;
   subtype ImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array_Access;
   use type ImageUtil_Access_Array_Access_Array_Access;
   subtype GraphicsConfiguration_Access is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access;
   use type GraphicsConfiguration_Access;
   subtype GraphicsConfiguration_Access_Array is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access_Array;
   use type GraphicsConfiguration_Access_Array;
   subtype GraphicsConfiguration_Access_Array_Access is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access_Array_Access;
   use type GraphicsConfiguration_Access_Array_Access;
   subtype GraphicsConfiguration_Access_Array_Access_Array is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access_Array_Access_Array;
   use type GraphicsConfiguration_Access_Array_Access_Array;
   subtype GraphicsConfiguration_Access_Array_Access_Array_Access is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access_Array_Access_Array_Access;
   use type GraphicsConfiguration_Access_Array_Access_Array_Access;
   subtype ImageUnifierProperties_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access;
   use type ImageUnifierProperties_Access;
   subtype ImageUnifierProperties_Access_Array is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array;
   use type ImageUnifierProperties_Access_Array;
   subtype ImageUnifierProperties_Access_Array_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access;
   use type ImageUnifierProperties_Access_Array_Access;
   subtype ImageUnifierProperties_Access_Array_Access_Array is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access_Array;
   use type ImageUnifierProperties_Access_Array_Access_Array;
   subtype ImageUnifierProperties_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access_Array_Access;
   use type ImageUnifierProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageUnifierUtil_Access is org.allbinary.media.image.ImageUnifierUtil_Package_References.ImageUnifierUtil_Access;
   function "=" (Left, Right : ImageUnifierUtil_Access) return Boolean renames org.allbinary.media.image.ImageUnifierUtil_Package_References."=";
   subtype ImageUnifierUtil_Access_Array is org.allbinary.media.image.ImageUnifierUtil_Package_References.ImageUnifierUtil_Access_Array;
   function "=" (Left, Right : ImageUnifierUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageUnifierUtil_Package_References."=";
   subtype ImageUnifierUtil_Access_Array_Access is org.allbinary.media.image.ImageUnifierUtil_Package_References.ImageUnifierUtil_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUnifierUtil_Package_References."=";
   function Java_Box (Value : ImageUnifierUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageUnifierUtil_Package_References.Java_Box;
   function Java_Unbox_ImageUnifierUtil_Access_Array (Value : access Java_Object'Class) return ImageUnifierUtil_Access_Array_Access renames org.allbinary.media.image.ImageUnifierUtil_Package_References.Java_Unbox_ImageUnifierUtil_Access_Array;
   subtype ImageUnifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageUnifierUtil_Package_References.ImageUnifierUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageUnifierUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageUnifierUtil_Package_References."=";
   subtype ImageUnifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUnifierUtil_Package_References.ImageUnifierUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUnifierUtil_Package_References."=";
   function Java_Box (Value : ImageUnifierUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageUnifierUtil_Package_References.Java_Box;
   function Java_Unbox_ImageUnifierUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageUnifierUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageUnifierUtil_Package_References.Java_Unbox_ImageUnifierUtil_Access_Array_Access_Array;

   type ImageUnifierUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageUtil : ImageUtil_Access;
   end record;
   instance : ImageUnifierUtil_Access;

   procedure Initialize (This : in out ImageUnifierUtil'Class);
   function Create return ImageUnifierUtil_Access;
   function getInstance return ImageUnifierUtil_Access;
   function getDefaultConfiguration (This : in out ImageUnifierUtil) return GraphicsConfiguration_Access;
   function getImage (This : in out ImageUnifierUtil; bufferedImageArray : BufferedImage_Access_Array_Access; imageUnifierProperties_Param : access ImageUnifierProperties_Package.ImageUnifierProperties'Class) return BufferedImage_Access;
   procedure getImage (This : in out ImageUnifierUtil; bufferedImageArray : BufferedImage_Access_Array_Access; imageUnifierProperties_Param : access ImageUnifierProperties_Package.ImageUnifierProperties'Class);

end org.allbinary.media.image.ImageUnifierUtil_Package;



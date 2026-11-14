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
limited with org.allbinary.media.image.MirrorImageUtil_Package;
package org.allbinary.media.image.MirrorImageUtil_Package_References is
   type MirrorImageUtil_Access is access all org.allbinary.media.image.MirrorImageUtil_Package.MirrorImageUtil'Class;
   type MirrorImageUtil_Access_Array is array (Natural range <>) of MirrorImageUtil_Access;
   type MirrorImageUtil_Access_Array_Access is access all MirrorImageUtil_Access_Array;
   type MirrorImageUtil_Access_Array_Access_Array is array (Natural range <>) of MirrorImageUtil_Access_Array_Access;
   type MirrorImageUtil_Access_Array_Access_Array_Access is access all MirrorImageUtil_Access_Array_Access_Array;
   type MirrorImageUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MirrorImageUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : MirrorImageUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MirrorImageUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MirrorImageUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MirrorImageUtil_Access_Array_Access is (if Value /= null and then Value.all in MirrorImageUtil_Access_Array_Object'Class then MirrorImageUtil_Access_Array_Object'Class (Value.all).Value else null);
   type MirrorImageUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MirrorImageUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MirrorImageUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MirrorImageUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MirrorImageUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MirrorImageUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MirrorImageUtil_Access_Array_Access_Array_Object'Class then MirrorImageUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.MirrorImageUtil_Package_References;

with org.allbinary.media.image.MirrorImageUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.geom.AffineTransform_Package; use java.awt.geom.AffineTransform_Package;
--  with java.awt.image.AffineTransformOp_Package; use java.awt.image.AffineTransformOp_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageUtil_Package_References;

package org.allbinary.media.image.MirrorImageUtil_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype MirrorImageUtil_Access is org.allbinary.media.image.MirrorImageUtil_Package_References.MirrorImageUtil_Access;
   function "=" (Left, Right : MirrorImageUtil_Access) return Boolean renames org.allbinary.media.image.MirrorImageUtil_Package_References."=";
   subtype MirrorImageUtil_Access_Array is org.allbinary.media.image.MirrorImageUtil_Package_References.MirrorImageUtil_Access_Array;
   function "=" (Left, Right : MirrorImageUtil_Access_Array) return Boolean renames org.allbinary.media.image.MirrorImageUtil_Package_References."=";
   subtype MirrorImageUtil_Access_Array_Access is org.allbinary.media.image.MirrorImageUtil_Package_References.MirrorImageUtil_Access_Array_Access;
   function "=" (Left, Right : MirrorImageUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.MirrorImageUtil_Package_References."=";
   function Java_Box (Value : MirrorImageUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.MirrorImageUtil_Package_References.Java_Box;
   function Java_Unbox_MirrorImageUtil_Access_Array (Value : access Java_Object'Class) return MirrorImageUtil_Access_Array_Access renames org.allbinary.media.image.MirrorImageUtil_Package_References.Java_Unbox_MirrorImageUtil_Access_Array;
   subtype MirrorImageUtil_Access_Array_Access_Array is org.allbinary.media.image.MirrorImageUtil_Package_References.MirrorImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MirrorImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.MirrorImageUtil_Package_References."=";
   subtype MirrorImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.MirrorImageUtil_Package_References.MirrorImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MirrorImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.MirrorImageUtil_Package_References."=";
   function Java_Box (Value : MirrorImageUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.MirrorImageUtil_Package_References.Java_Box;
   function Java_Unbox_MirrorImageUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return MirrorImageUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.MirrorImageUtil_Package_References.Java_Unbox_MirrorImageUtil_Access_Array_Access_Array;

   type MirrorImageUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageUtil : ImageUtil_Access;
   end record;
   instance : MirrorImageUtil_Access;

   procedure Initialize (This : in out MirrorImageUtil'Class);
   function Create return MirrorImageUtil_Access;
   function getInstance return MirrorImageUtil_Access;
   function getImage (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; verticle : Boolean; horizontal : Boolean) return BufferedImage_Access;
   procedure getImage (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; verticle : Boolean; horizontal : Boolean);
   function getImages (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; verticle : Boolean; horizontal : Boolean) return BufferedImage_Access_Array_Access;
   procedure getImages (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; verticle : Boolean; horizontal : Boolean);

end org.allbinary.media.image.MirrorImageUtil_Package;



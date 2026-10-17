--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with java.awt.image.RenderedImage_Package; use java.awt.image.RenderedImage_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.logic.visual.media.ImageIOUtil_Package; use org.allbinary.logic.visual.media.ImageIOUtil_Package;
with org.allbinary.logic.visual.media.MediaData_Package; use org.allbinary.logic.visual.media.MediaData_Package;

package org.allbinary.logic.visual.media.MediaUtil_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ImageUtil_Package renames Standard.org.allbinary.media.image.ImageUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type MediaUtil is tagged;
   type MediaUtil_Access is access all MediaUtil'Class;
   type MediaUtil_Access_Array is array (Natural range <>) of MediaUtil_Access;
   type MediaUtil_Access_Array_Access is access all MediaUtil_Access_Array;

   type MediaUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : MediaUtil_Access;

   procedure Initialize (This : in out MediaUtil'Class);
   function Create return MediaUtil_Access;
   function getInstance return MediaUtil_Access;
   procedure saveImageFile (This : in out MediaUtil; originalImageFile : AbFile_Access; newImageFileName : Unbounded_String; category : Unbounded_String; mediaData : MediaData_Access; newWidth : Integer; newHeight : Integer);
   function getImageBufferPropertyHashMap (bufferedImage : BufferedImage_Access) return HashMap_Access;
   procedure getImageBufferPropertyHashMap (bufferedImage : BufferedImage_Access);

end org.allbinary.logic.visual.media.MediaUtil_Package;



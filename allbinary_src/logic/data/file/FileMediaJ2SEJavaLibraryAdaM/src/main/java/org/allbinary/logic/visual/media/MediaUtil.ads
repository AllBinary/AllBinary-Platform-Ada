--  Generated Code Do Not Modify

limited with org.allbinary.logic.visual.media.MediaUtil_Package;
package org.allbinary.logic.visual.media.MediaUtil_Package_References is
   type MediaUtil_Access is access all org.allbinary.logic.visual.media.MediaUtil_Package.MediaUtil'Class;
   type MediaUtil_Access_Array is array (Natural range <>) of MediaUtil_Access;
   type MediaUtil_Access_Array_Access is access all MediaUtil_Access_Array;
   type MediaUtil_Access_Array_Access_Array is array (Natural range <>) of MediaUtil_Access_Array_Access;
   type MediaUtil_Access_Array_Access_Array_Access is access all MediaUtil_Access_Array_Access_Array;
end org.allbinary.logic.visual.media.MediaUtil_Package_References;

with org.allbinary.logic.visual.media.MediaUtil_Package_References;
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
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.visual.media.MediaData_Package;
with org.allbinary.logic.visual.media.MediaData_Package_References;

package org.allbinary.logic.visual.media.MediaUtil_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
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
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   subtype MediaData_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access;
   use type MediaData_Access;
   subtype MediaData_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array;
   use type MediaData_Access_Array;
   subtype MediaData_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access;
   use type MediaData_Access_Array_Access;
   subtype MediaData_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array;
   use type MediaData_Access_Array_Access_Array;
   subtype MediaData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array_Access;
   use type MediaData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MediaUtil_Access is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access;
   function "=" (Left, Right : MediaUtil_Access) return Boolean renames org.allbinary.logic.visual.media.MediaUtil_Package_References."=";
   subtype MediaUtil_Access_Array is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access_Array;
   function "=" (Left, Right : MediaUtil_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaUtil_Package_References."=";
   subtype MediaUtil_Access_Array_Access is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access_Array_Access;
   function "=" (Left, Right : MediaUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaUtil_Package_References."=";
   subtype MediaUtil_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MediaUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaUtil_Package_References."=";
   subtype MediaUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaUtil_Package_References."=";

   type MediaUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : MediaUtil_Access;

   procedure Initialize (This : in out MediaUtil'Class);
   function Create return MediaUtil_Access;
   function getInstance return MediaUtil_Access;
   procedure saveImageFile (This : in out MediaUtil; originalImageFile_Param : access AbFile_Package.AbFile'Class; newImageFileName : Unbounded_String; category : Unbounded_String; mediaData_Param : access MediaData_Package.MediaData'Class; newWidth : Integer; newHeight : Integer);
   function getImageBufferPropertyHashMap (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return HashMap_Access;
   procedure getImageBufferPropertyHashMap (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);

end org.allbinary.logic.visual.media.MediaUtil_Package;



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
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;

package org.allbinary.logic.visual.media.ImageIOUtil_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;

   type ImageIOUtil is tagged;
   type ImageIOUtil_Access is access all ImageIOUtil'Class;
   type ImageIOUtil_Access_Array is array (Natural range <>) of ImageIOUtil_Access;
   type ImageIOUtil_Access_Array_Access is access all ImageIOUtil_Access_Array;

   type ImageIOUtil is new Java_Object with null record;

   procedure Initialize (This : in out ImageIOUtil'Class);
   function Create return ImageIOUtil_Access;
   function read (file_Param : access AbFile'Class) return BufferedImage_Access;
   procedure read (file_Param : access AbFile'Class);
   function write (renderedImage_Param : access RenderedImage'Class; name : Unbounded_String; file_Param : access AbFile'Class) return Boolean;
   procedure write (renderedImage_Param : access RenderedImage'Class; name : Unbounded_String; file_Param : access AbFile'Class);

end org.allbinary.logic.visual.media.ImageIOUtil_Package;



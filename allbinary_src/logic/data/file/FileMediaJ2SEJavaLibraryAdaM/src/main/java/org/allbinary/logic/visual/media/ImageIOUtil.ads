--  Generated Code Do Not Modify

limited with org.allbinary.logic.visual.media.ImageIOUtil_Package;
package org.allbinary.logic.visual.media.ImageIOUtil_Package_References is
   type ImageIOUtil_Access is access all org.allbinary.logic.visual.media.ImageIOUtil_Package.ImageIOUtil'Class;
   type ImageIOUtil_Access_Array is array (Natural range <>) of ImageIOUtil_Access;
   type ImageIOUtil_Access_Array_Access is access all ImageIOUtil_Access_Array;
   type ImageIOUtil_Access_Array_Access_Array is array (Natural range <>) of ImageIOUtil_Access_Array_Access;
   type ImageIOUtil_Access_Array_Access_Array_Access is access all ImageIOUtil_Access_Array_Access_Array;
end org.allbinary.logic.visual.media.ImageIOUtil_Package_References;

with org.allbinary.logic.visual.media.ImageIOUtil_Package_References;
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
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.visual.media.ImageIOUtil_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype ImageIOUtil_Access is org.allbinary.logic.visual.media.ImageIOUtil_Package_References.ImageIOUtil_Access;
   function "=" (Left, Right : ImageIOUtil_Access) return Boolean renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References."=";
   subtype ImageIOUtil_Access_Array is org.allbinary.logic.visual.media.ImageIOUtil_Package_References.ImageIOUtil_Access_Array;
   function "=" (Left, Right : ImageIOUtil_Access_Array) return Boolean renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References."=";
   subtype ImageIOUtil_Access_Array_Access is org.allbinary.logic.visual.media.ImageIOUtil_Package_References.ImageIOUtil_Access_Array_Access;
   function "=" (Left, Right : ImageIOUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References."=";
   subtype ImageIOUtil_Access_Array_Access_Array is org.allbinary.logic.visual.media.ImageIOUtil_Package_References.ImageIOUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageIOUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References."=";
   subtype ImageIOUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.ImageIOUtil_Package_References.ImageIOUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageIOUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References."=";

   type ImageIOUtil is new Java_Object with null record;

   procedure Initialize (This : in out ImageIOUtil'Class);
   function Create return ImageIOUtil_Access;
   function read (file_Param : access AbFile_Package.AbFile'Class) return BufferedImage_Access;
   procedure read (file_Param : access AbFile_Package.AbFile'Class);
   function write (renderedImage_Param : access RenderedImage_Package.RenderedImage'Class; name : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure write (renderedImage_Param : access RenderedImage_Package.RenderedImage'Class; name : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class);

end org.allbinary.logic.visual.media.ImageIOUtil_Package;



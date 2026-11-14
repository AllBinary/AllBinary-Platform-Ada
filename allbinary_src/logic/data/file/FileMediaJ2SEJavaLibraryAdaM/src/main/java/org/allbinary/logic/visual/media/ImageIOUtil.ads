--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.logic.visual.media.ImageIOUtil_Package;
package org.allbinary.logic.visual.media.ImageIOUtil_Package_References is
   type ImageIOUtil_Access is access all org.allbinary.logic.visual.media.ImageIOUtil_Package.ImageIOUtil'Class;
   type ImageIOUtil_Access_Array is array (Natural range <>) of ImageIOUtil_Access;
   type ImageIOUtil_Access_Array_Access is access all ImageIOUtil_Access_Array;
   type ImageIOUtil_Access_Array_Access_Array is array (Natural range <>) of ImageIOUtil_Access_Array_Access;
   type ImageIOUtil_Access_Array_Access_Array_Access is access all ImageIOUtil_Access_Array_Access_Array;
   type ImageIOUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageIOUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageIOUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageIOUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageIOUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageIOUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageIOUtil_Access_Array_Object'Class then ImageIOUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageIOUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageIOUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageIOUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageIOUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageIOUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageIOUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageIOUtil_Access_Array_Access_Array_Object'Class then ImageIOUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : ImageIOUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References.Java_Box;
   function Java_Unbox_ImageIOUtil_Access_Array (Value : access Java_Object'Class) return ImageIOUtil_Access_Array_Access renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References.Java_Unbox_ImageIOUtil_Access_Array;
   subtype ImageIOUtil_Access_Array_Access_Array is org.allbinary.logic.visual.media.ImageIOUtil_Package_References.ImageIOUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageIOUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References."=";
   subtype ImageIOUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.ImageIOUtil_Package_References.ImageIOUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageIOUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References."=";
   function Java_Box (Value : ImageIOUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References.Java_Box;
   function Java_Unbox_ImageIOUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageIOUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.media.ImageIOUtil_Package_References.Java_Unbox_ImageIOUtil_Access_Array_Access_Array;

   type ImageIOUtil is new Java_Object with null record;

   procedure Initialize (This : in out ImageIOUtil'Class);
   function Create return ImageIOUtil_Access;
   function read (file_Param : access AbFile_Package.AbFile'Class) return BufferedImage_Access;
   procedure read (file_Param : access AbFile_Package.AbFile'Class);
   function write (renderedImage_Param : access RenderedImage_Package.RenderedImage'Class; name : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure write (renderedImage_Param : access RenderedImage_Package.RenderedImage'Class; name : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class);

end org.allbinary.logic.visual.media.ImageIOUtil_Package;



--  Generated Code Do Not Modify

limited with org.allbinary.logic.visual.media.MediaIOUtil_Package;
package org.allbinary.logic.visual.media.MediaIOUtil_Package_References is
   type MediaIOUtil_Access is access all org.allbinary.logic.visual.media.MediaIOUtil_Package.MediaIOUtil'Class;
   type MediaIOUtil_Access_Array is array (Natural range <>) of MediaIOUtil_Access;
   type MediaIOUtil_Access_Array_Access is access all MediaIOUtil_Access_Array;
   type MediaIOUtil_Access_Array_Access_Array is array (Natural range <>) of MediaIOUtil_Access_Array_Access;
   type MediaIOUtil_Access_Array_Access_Array_Access is access all MediaIOUtil_Access_Array_Access_Array;
end org.allbinary.logic.visual.media.MediaIOUtil_Package_References;

with org.allbinary.logic.visual.media.MediaIOUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;

package org.allbinary.logic.visual.media.MediaIOUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MediaIOUtil_Access is org.allbinary.logic.visual.media.MediaIOUtil_Package_References.MediaIOUtil_Access;
   function "=" (Left, Right : MediaIOUtil_Access) return Boolean renames org.allbinary.logic.visual.media.MediaIOUtil_Package_References."=";
   subtype MediaIOUtil_Access_Array is org.allbinary.logic.visual.media.MediaIOUtil_Package_References.MediaIOUtil_Access_Array;
   function "=" (Left, Right : MediaIOUtil_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaIOUtil_Package_References."=";
   subtype MediaIOUtil_Access_Array_Access is org.allbinary.logic.visual.media.MediaIOUtil_Package_References.MediaIOUtil_Access_Array_Access;
   function "=" (Left, Right : MediaIOUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaIOUtil_Package_References."=";
   subtype MediaIOUtil_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaIOUtil_Package_References.MediaIOUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MediaIOUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaIOUtil_Package_References."=";
   subtype MediaIOUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaIOUtil_Package_References.MediaIOUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaIOUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaIOUtil_Package_References."=";

   type MediaIOUtil is new Java_Object with null record;
   instance : MediaIOUtil_Access;

   procedure Initialize (This : in out MediaIOUtil'Class);
   function Create return MediaIOUtil_Access;
   function getInstance return MediaIOUtil_Access;
   function getReaderFormatNames (This : in out MediaIOUtil) return Unbounded_String_Array_Access;
   function getWriterFormatNames (This : in out MediaIOUtil) return Unbounded_String_Array_Access;

end org.allbinary.logic.visual.media.MediaIOUtil_Package;



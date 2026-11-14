--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.media.image.BufferedImageUtil2_Package;
package org.allbinary.media.image.BufferedImageUtil2_Package_References is
   type BufferedImageUtil2_Access is access all org.allbinary.media.image.BufferedImageUtil2_Package.BufferedImageUtil2'Class;
   type BufferedImageUtil2_Access_Array is array (Natural range <>) of BufferedImageUtil2_Access;
   type BufferedImageUtil2_Access_Array_Access is access all BufferedImageUtil2_Access_Array;
   type BufferedImageUtil2_Access_Array_Access_Array is array (Natural range <>) of BufferedImageUtil2_Access_Array_Access;
   type BufferedImageUtil2_Access_Array_Access_Array_Access is access all BufferedImageUtil2_Access_Array_Access_Array;
   type BufferedImageUtil2_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedImageUtil2_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedImageUtil2_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedImageUtil2_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedImageUtil2_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedImageUtil2_Access_Array_Access is (if Value /= null and then Value.all in BufferedImageUtil2_Access_Array_Object'Class then BufferedImageUtil2_Access_Array_Object'Class (Value.all).Value else null);
   type BufferedImageUtil2_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedImageUtil2_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedImageUtil2_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedImageUtil2_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedImageUtil2_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedImageUtil2_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BufferedImageUtil2_Access_Array_Access_Array_Object'Class then BufferedImageUtil2_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.BufferedImageUtil2_Package_References;

with org.allbinary.media.image.BufferedImageUtil2_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageUtil_Package_References;

package org.allbinary.media.image.BufferedImageUtil2_Package is

   package Reference_Types is
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


   subtype BufferedImageUtil2_Access is org.allbinary.media.image.BufferedImageUtil2_Package_References.BufferedImageUtil2_Access;
   function "=" (Left, Right : BufferedImageUtil2_Access) return Boolean renames org.allbinary.media.image.BufferedImageUtil2_Package_References."=";
   subtype BufferedImageUtil2_Access_Array is org.allbinary.media.image.BufferedImageUtil2_Package_References.BufferedImageUtil2_Access_Array;
   function "=" (Left, Right : BufferedImageUtil2_Access_Array) return Boolean renames org.allbinary.media.image.BufferedImageUtil2_Package_References."=";
   subtype BufferedImageUtil2_Access_Array_Access is org.allbinary.media.image.BufferedImageUtil2_Package_References.BufferedImageUtil2_Access_Array_Access;
   function "=" (Left, Right : BufferedImageUtil2_Access_Array_Access) return Boolean renames org.allbinary.media.image.BufferedImageUtil2_Package_References."=";
   function Java_Box (Value : BufferedImageUtil2_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.BufferedImageUtil2_Package_References.Java_Box;
   function Java_Unbox_BufferedImageUtil2_Access_Array (Value : access Java_Object'Class) return BufferedImageUtil2_Access_Array_Access renames org.allbinary.media.image.BufferedImageUtil2_Package_References.Java_Unbox_BufferedImageUtil2_Access_Array;
   subtype BufferedImageUtil2_Access_Array_Access_Array is org.allbinary.media.image.BufferedImageUtil2_Package_References.BufferedImageUtil2_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedImageUtil2_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.BufferedImageUtil2_Package_References."=";
   subtype BufferedImageUtil2_Access_Array_Access_Array_Access is org.allbinary.media.image.BufferedImageUtil2_Package_References.BufferedImageUtil2_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedImageUtil2_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.BufferedImageUtil2_Package_References."=";
   function Java_Box (Value : BufferedImageUtil2_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.BufferedImageUtil2_Package_References.Java_Box;
   function Java_Unbox_BufferedImageUtil2_Access_Array_Access_Array (Value : access Java_Object'Class) return BufferedImageUtil2_Access_Array_Access_Array_Access renames org.allbinary.media.image.BufferedImageUtil2_Package_References.Java_Unbox_BufferedImageUtil2_Access_Array_Access_Array;

   type BufferedImageUtil2 is new Java_Object with record
      imageUtil : ImageUtil_Access;
   end record;
   instance : BufferedImageUtil2_Access;

   procedure Initialize (This : in out BufferedImageUtil2'Class);
   function Create return BufferedImageUtil2_Access;
   function getInstance return BufferedImageUtil2_Access;
   function createSpriteImage (This : in out BufferedImageUtil2; bufferedImageArray : BufferedImage_Access_Array_Access) return BufferedImage_Access;
   procedure createSpriteImage (This : in out BufferedImageUtil2; bufferedImageArray : BufferedImage_Access_Array_Access);

end org.allbinary.media.image.BufferedImageUtil2_Package;



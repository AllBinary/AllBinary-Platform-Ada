--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.item.ImageItem_Package;
package org.allbinary.graphics.form.item.ImageItem_Package_References is
   type ImageItem_Access is access all org.allbinary.graphics.form.item.ImageItem_Package.ImageItem'Class;
   type ImageItem_Access_Array is array (Natural range <>) of ImageItem_Access;
   type ImageItem_Access_Array_Access is access all ImageItem_Access_Array;
   type ImageItem_Access_Array_Access_Array is array (Natural range <>) of ImageItem_Access_Array_Access;
   type ImageItem_Access_Array_Access_Array_Access is access all ImageItem_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.ImageItem_Package_References;

with org.allbinary.graphics.form.item.ImageItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ImageItem_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ImageItem_Access is org.allbinary.graphics.form.item.ImageItem_Package_References.ImageItem_Access;
   function "=" (Left, Right : ImageItem_Access) return Boolean renames org.allbinary.graphics.form.item.ImageItem_Package_References."=";
   subtype ImageItem_Access_Array is org.allbinary.graphics.form.item.ImageItem_Package_References.ImageItem_Access_Array;
   function "=" (Left, Right : ImageItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ImageItem_Package_References."=";
   subtype ImageItem_Access_Array_Access is org.allbinary.graphics.form.item.ImageItem_Package_References.ImageItem_Access_Array_Access;
   function "=" (Left, Right : ImageItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ImageItem_Package_References."=";
   subtype ImageItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ImageItem_Package_References.ImageItem_Access_Array_Access_Array;
   function "=" (Left, Right : ImageItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ImageItem_Package_References."=";
   subtype ImageItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ImageItem_Package_References.ImageItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ImageItem_Package_References."=";

   type ImageItem is new Java_Object with null record;

   procedure Initialize (This : in out ImageItem'Class);
   function Create return ImageItem_Access;

end org.allbinary.graphics.form.item.ImageItem_Package;



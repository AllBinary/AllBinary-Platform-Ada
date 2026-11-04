--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.item.TextFieldItemHelper_Package;
package org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References is
   type TextFieldItemHelper_Access is access all org.allbinary.graphics.form.item.TextFieldItemHelper_Package.TextFieldItemHelper'Class;
   type TextFieldItemHelper_Access_Array is array (Natural range <>) of TextFieldItemHelper_Access;
   type TextFieldItemHelper_Access_Array_Access is access all TextFieldItemHelper_Access_Array;
   type TextFieldItemHelper_Access_Array_Access_Array is array (Natural range <>) of TextFieldItemHelper_Access_Array_Access;
   type TextFieldItemHelper_Access_Array_Access_Array_Access is access all TextFieldItemHelper_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References;

with org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.TextFieldItemHelper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TextFieldItemHelper_Access is org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References.TextFieldItemHelper_Access;
   function "=" (Left, Right : TextFieldItemHelper_Access) return Boolean renames org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References."=";
   subtype TextFieldItemHelper_Access_Array is org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References.TextFieldItemHelper_Access_Array;
   function "=" (Left, Right : TextFieldItemHelper_Access_Array) return Boolean renames org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References."=";
   subtype TextFieldItemHelper_Access_Array_Access is org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References.TextFieldItemHelper_Access_Array_Access;
   function "=" (Left, Right : TextFieldItemHelper_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References."=";
   subtype TextFieldItemHelper_Access_Array_Access_Array is org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References.TextFieldItemHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TextFieldItemHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References."=";
   subtype TextFieldItemHelper_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References.TextFieldItemHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextFieldItemHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.TextFieldItemHelper_Package_References."=";

   type TextFieldItemHelper is new Java_Object with null record;

   procedure Initialize (This : in out TextFieldItemHelper'Class);
   function Create return TextFieldItemHelper_Access;

end org.allbinary.graphics.form.item.TextFieldItemHelper_Package;



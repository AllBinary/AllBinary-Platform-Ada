--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.item.ChoiceGroupItem_Package;
package org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References is
   type ChoiceGroupItem_Access is access all org.allbinary.graphics.form.item.ChoiceGroupItem_Package.ChoiceGroupItem'Class;
   type ChoiceGroupItem_Access_Array is array (Natural range <>) of ChoiceGroupItem_Access;
   type ChoiceGroupItem_Access_Array_Access is access all ChoiceGroupItem_Access_Array;
   type ChoiceGroupItem_Access_Array_Access_Array is array (Natural range <>) of ChoiceGroupItem_Access_Array_Access;
   type ChoiceGroupItem_Access_Array_Access_Array_Access is access all ChoiceGroupItem_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References;

with org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ChoiceGroupItem_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ChoiceGroupItem_Access is org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.ChoiceGroupItem_Access;
   function "=" (Left, Right : ChoiceGroupItem_Access) return Boolean renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References."=";
   subtype ChoiceGroupItem_Access_Array is org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.ChoiceGroupItem_Access_Array;
   function "=" (Left, Right : ChoiceGroupItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References."=";
   subtype ChoiceGroupItem_Access_Array_Access is org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.ChoiceGroupItem_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroupItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References."=";
   subtype ChoiceGroupItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.ChoiceGroupItem_Access_Array_Access_Array;
   function "=" (Left, Right : ChoiceGroupItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References."=";
   subtype ChoiceGroupItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.ChoiceGroupItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroupItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References."=";

   type ChoiceGroupItem is new Java_Object with null record;

   procedure Initialize (This : in out ChoiceGroupItem'Class);
   function Create return ChoiceGroupItem_Access;

end org.allbinary.graphics.form.item.ChoiceGroupItem_Package;



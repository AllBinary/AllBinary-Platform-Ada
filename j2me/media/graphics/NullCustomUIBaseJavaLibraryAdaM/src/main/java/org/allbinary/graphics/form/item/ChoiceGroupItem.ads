--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.item.ChoiceGroupItem_Package;
package org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References is
   type ChoiceGroupItem_Access is access all org.allbinary.graphics.form.item.ChoiceGroupItem_Package.ChoiceGroupItem'Class;
   type ChoiceGroupItem_Access_Array is array (Natural range <>) of ChoiceGroupItem_Access;
   type ChoiceGroupItem_Access_Array_Access is access all ChoiceGroupItem_Access_Array;
   type ChoiceGroupItem_Access_Array_Access_Array is array (Natural range <>) of ChoiceGroupItem_Access_Array_Access;
   type ChoiceGroupItem_Access_Array_Access_Array_Access is access all ChoiceGroupItem_Access_Array_Access_Array;
   type ChoiceGroupItem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ChoiceGroupItem_Access_Array_Access;
   end record;
   function Java_Box (Value : ChoiceGroupItem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ChoiceGroupItem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ChoiceGroupItem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ChoiceGroupItem_Access_Array_Access is (if Value /= null and then Value.all in ChoiceGroupItem_Access_Array_Object'Class then ChoiceGroupItem_Access_Array_Object'Class (Value.all).Value else null);
   type ChoiceGroupItem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ChoiceGroupItem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ChoiceGroupItem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ChoiceGroupItem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ChoiceGroupItem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ChoiceGroupItem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ChoiceGroupItem_Access_Array_Access_Array_Object'Class then ChoiceGroupItem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : ChoiceGroupItem_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.Java_Box;
   function Java_Unbox_ChoiceGroupItem_Access_Array (Value : access Java_Object'Class) return ChoiceGroupItem_Access_Array_Access renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.Java_Unbox_ChoiceGroupItem_Access_Array;
   subtype ChoiceGroupItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.ChoiceGroupItem_Access_Array_Access_Array;
   function "=" (Left, Right : ChoiceGroupItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References."=";
   subtype ChoiceGroupItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.ChoiceGroupItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroupItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References."=";
   function Java_Box (Value : ChoiceGroupItem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.Java_Box;
   function Java_Unbox_ChoiceGroupItem_Access_Array_Access_Array (Value : access Java_Object'Class) return ChoiceGroupItem_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.ChoiceGroupItem_Package_References.Java_Unbox_ChoiceGroupItem_Access_Array_Access_Array;

   type ChoiceGroupItem is new Java_Object with null record;

   procedure Initialize (This : in out ChoiceGroupItem'Class);
   function Create return ChoiceGroupItem_Access;

end org.allbinary.graphics.form.item.ChoiceGroupItem_Package;



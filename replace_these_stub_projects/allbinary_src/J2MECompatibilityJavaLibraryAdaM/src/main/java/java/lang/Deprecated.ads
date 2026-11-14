--  Generated Code Do Not Modify

with AllBinary_Java;
limited with java.lang.Deprecated_Package;
package java.lang.Deprecated_Package_References is
   type Deprecated_Access is access all java.lang.Deprecated_Package.Deprecated'Class;
   type Deprecated_Access_Array is array (Natural range <>) of Deprecated_Access;
   type Deprecated_Access_Array_Access is access all Deprecated_Access_Array;
   type Deprecated_Access_Array_Access_Array is array (Natural range <>) of Deprecated_Access_Array_Access;
   type Deprecated_Access_Array_Access_Array_Access is access all Deprecated_Access_Array_Access_Array;
   type Deprecated_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Deprecated_Access_Array_Access;
   end record;
   function Java_Box (Value : Deprecated_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Deprecated_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Deprecated_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Deprecated_Access_Array_Access is (if Value /= null and then Value.all in Deprecated_Access_Array_Object'Class then Deprecated_Access_Array_Object'Class (Value.all).Value else null);
   type Deprecated_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Deprecated_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Deprecated_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Deprecated_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Deprecated_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Deprecated_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Deprecated_Access_Array_Access_Array_Object'Class then Deprecated_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end java.lang.Deprecated_Package_References;

with java.lang.Deprecated_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package java.lang.Deprecated_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Deprecated_Access is java.lang.Deprecated_Package_References.Deprecated_Access;
   function "=" (Left, Right : Deprecated_Access) return Boolean renames java.lang.Deprecated_Package_References."=";
   subtype Deprecated_Access_Array is java.lang.Deprecated_Package_References.Deprecated_Access_Array;
   function "=" (Left, Right : Deprecated_Access_Array) return Boolean renames java.lang.Deprecated_Package_References."=";
   subtype Deprecated_Access_Array_Access is java.lang.Deprecated_Package_References.Deprecated_Access_Array_Access;
   function "=" (Left, Right : Deprecated_Access_Array_Access) return Boolean renames java.lang.Deprecated_Package_References."=";
   function Java_Box (Value : Deprecated_Access_Array_Access) return Java_Object_Access renames java.lang.Deprecated_Package_References.Java_Box;
   function Java_Unbox_Deprecated_Access_Array (Value : access Java_Object'Class) return Deprecated_Access_Array_Access renames java.lang.Deprecated_Package_References.Java_Unbox_Deprecated_Access_Array;
   subtype Deprecated_Access_Array_Access_Array is java.lang.Deprecated_Package_References.Deprecated_Access_Array_Access_Array;
   function "=" (Left, Right : Deprecated_Access_Array_Access_Array) return Boolean renames java.lang.Deprecated_Package_References."=";
   subtype Deprecated_Access_Array_Access_Array_Access is java.lang.Deprecated_Package_References.Deprecated_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Deprecated_Access_Array_Access_Array_Access) return Boolean renames java.lang.Deprecated_Package_References."=";
   function Java_Box (Value : Deprecated_Access_Array_Access_Array_Access) return Java_Object_Access renames java.lang.Deprecated_Package_References.Java_Box;
   function Java_Unbox_Deprecated_Access_Array_Access_Array (Value : access Java_Object'Class) return Deprecated_Access_Array_Access_Array_Access renames java.lang.Deprecated_Package_References.Java_Unbox_Deprecated_Access_Array_Access_Array;

   type Deprecated is new Java_Object with null record;

   procedure Initialize (This : in out Deprecated'Class);
   function Create return Deprecated_Access;

end java.lang.Deprecated_Package;



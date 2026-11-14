--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.input.AndroidGameKey_Package;
package org.allbinary.game.input.AndroidGameKey_Package_References is
   type AndroidGameKey_Access is access all org.allbinary.game.input.AndroidGameKey_Package.AndroidGameKey'Class;
   type AndroidGameKey_Access_Array is array (Natural range <>) of AndroidGameKey_Access;
   type AndroidGameKey_Access_Array_Access is access all AndroidGameKey_Access_Array;
   type AndroidGameKey_Access_Array_Access_Array is array (Natural range <>) of AndroidGameKey_Access_Array_Access;
   type AndroidGameKey_Access_Array_Access_Array_Access is access all AndroidGameKey_Access_Array_Access_Array;
   type AndroidGameKey_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidGameKey_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidGameKey_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidGameKey_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidGameKey_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidGameKey_Access_Array_Access is (if Value /= null and then Value.all in AndroidGameKey_Access_Array_Object'Class then AndroidGameKey_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidGameKey_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidGameKey_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidGameKey_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidGameKey_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidGameKey_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidGameKey_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidGameKey_Access_Array_Access_Array_Object'Class then AndroidGameKey_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.AndroidGameKey_Package_References;

with org.allbinary.game.input.AndroidGameKey_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.AndroidGameKey_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AndroidGameKey_Access is org.allbinary.game.input.AndroidGameKey_Package_References.AndroidGameKey_Access;
   function "=" (Left, Right : AndroidGameKey_Access) return Boolean renames org.allbinary.game.input.AndroidGameKey_Package_References."=";
   subtype AndroidGameKey_Access_Array is org.allbinary.game.input.AndroidGameKey_Package_References.AndroidGameKey_Access_Array;
   function "=" (Left, Right : AndroidGameKey_Access_Array) return Boolean renames org.allbinary.game.input.AndroidGameKey_Package_References."=";
   subtype AndroidGameKey_Access_Array_Access is org.allbinary.game.input.AndroidGameKey_Package_References.AndroidGameKey_Access_Array_Access;
   function "=" (Left, Right : AndroidGameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidGameKey_Package_References."=";
   function Java_Box (Value : AndroidGameKey_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.AndroidGameKey_Package_References.Java_Box;
   function Java_Unbox_AndroidGameKey_Access_Array (Value : access Java_Object'Class) return AndroidGameKey_Access_Array_Access renames org.allbinary.game.input.AndroidGameKey_Package_References.Java_Unbox_AndroidGameKey_Access_Array;
   subtype AndroidGameKey_Access_Array_Access_Array is org.allbinary.game.input.AndroidGameKey_Package_References.AndroidGameKey_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidGameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.AndroidGameKey_Package_References."=";
   subtype AndroidGameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.AndroidGameKey_Package_References.AndroidGameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidGameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidGameKey_Package_References."=";
   function Java_Box (Value : AndroidGameKey_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.AndroidGameKey_Package_References.Java_Box;
   function Java_Unbox_AndroidGameKey_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidGameKey_Access_Array_Access_Array_Access renames org.allbinary.game.input.AndroidGameKey_Package_References.Java_Unbox_AndroidGameKey_Access_Array_Access_Array;

   type AndroidGameKey is new Input_Package.Input with null record;

   procedure Initialize (This : in out AndroidGameKey'Class; keyCode : Integer; name : Unbounded_String);
   function Create (keyCode : Integer; name : Unbounded_String) return AndroidGameKey_Access;
   function toString (This : in out AndroidGameKey) return Unbounded_String;
   function getString (keyCode : Integer) return Unbounded_String;
   procedure getString (keyCode : Integer);

end org.allbinary.game.input.AndroidGameKey_Package;



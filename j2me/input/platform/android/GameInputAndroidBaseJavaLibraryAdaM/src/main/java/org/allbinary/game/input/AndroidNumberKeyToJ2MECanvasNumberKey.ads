--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package;
package org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References is
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access is access all org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package.AndroidNumberKeyToJ2MECanvasNumberKey'Class;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array is array (Natural range <>) of AndroidNumberKeyToJ2MECanvasNumberKey_Access;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access is access all AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array is array (Natural range <>) of AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access is access all AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access is (if Value /= null and then Value.all in AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Object'Class then AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Object'Class then AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References;

with org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AndroidNumberKeyToJ2MECanvasNumberKey_Access is org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.AndroidNumberKeyToJ2MECanvasNumberKey_Access;
   function "=" (Left, Right : AndroidNumberKeyToJ2MECanvasNumberKey_Access) return Boolean renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References."=";
   subtype AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array is org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array;
   function "=" (Left, Right : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array) return Boolean renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References."=";
   subtype AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access is org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access;
   function "=" (Left, Right : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References."=";
   function Java_Box (Value : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.Java_Box;
   function Java_Unbox_AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array (Value : access Java_Object'Class) return AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.Java_Unbox_AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array;
   subtype AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array is org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References."=";
   subtype AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access is org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References."=";
   function Java_Box (Value : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.Java_Box;
   function Java_Unbox_AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.Java_Unbox_AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array;

   type AndroidNumberKeyToJ2MECanvasNumberKey is new Java_Object with null record;
   androidtoJavaMicroEditionKeyMap : Integer_Array_Access;

   procedure Initialize (This : in out AndroidNumberKeyToJ2MECanvasNumberKey'Class);
   function Create return AndroidNumberKeyToJ2MECanvasNumberKey_Access;
   procedure init;
   function getKey (key : Integer) return Integer;
   procedure getKey (key : Integer);

end org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package;



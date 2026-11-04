--  Generated Code Do Not Modify

limited with org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package;
package org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References is
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access is access all org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package.AndroidNumberKeyToJ2MECanvasNumberKey'Class;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array is array (Natural range <>) of AndroidNumberKeyToJ2MECanvasNumberKey_Access;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access is access all AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array is array (Natural range <>) of AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access is access all AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array;
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
   subtype AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array is org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References."=";
   subtype AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access is org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References.AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package_References."=";

   type AndroidNumberKeyToJ2MECanvasNumberKey is new Java_Object with null record;
   androidtoJavaMicroEditionKeyMap : Integer_Array_Access;

   procedure Initialize (This : in out AndroidNumberKeyToJ2MECanvasNumberKey'Class);
   function Create return AndroidNumberKeyToJ2MECanvasNumberKey_Access;
   procedure init;
   function getKey (key : Integer) return Integer;
   procedure getKey (key : Integer);

end org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package;



--  Generated Code Do Not Modify

limited with org.allbinary.game.input.AndroidAPI9KeyFactory_Package;
package org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References is
   type AndroidAPI9KeyFactory_Access is access all org.allbinary.game.input.AndroidAPI9KeyFactory_Package.AndroidAPI9KeyFactory'Class;
   type AndroidAPI9KeyFactory_Access_Array is array (Natural range <>) of AndroidAPI9KeyFactory_Access;
   type AndroidAPI9KeyFactory_Access_Array_Access is access all AndroidAPI9KeyFactory_Access_Array;
   type AndroidAPI9KeyFactory_Access_Array_Access_Array is array (Natural range <>) of AndroidAPI9KeyFactory_Access_Array_Access;
   type AndroidAPI9KeyFactory_Access_Array_Access_Array_Access is access all AndroidAPI9KeyFactory_Access_Array_Access_Array;
end org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References;

with org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.AndroidKeyFactory_Package; use org.allbinary.game.input.AndroidKeyFactory_Package;

package org.allbinary.game.input.AndroidAPI9KeyFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AndroidAPI9KeyFactory_Access is org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References.AndroidAPI9KeyFactory_Access;
   function "=" (Left, Right : AndroidAPI9KeyFactory_Access) return Boolean renames org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References."=";
   subtype AndroidAPI9KeyFactory_Access_Array is org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References.AndroidAPI9KeyFactory_Access_Array;
   function "=" (Left, Right : AndroidAPI9KeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References."=";
   subtype AndroidAPI9KeyFactory_Access_Array_Access is org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References.AndroidAPI9KeyFactory_Access_Array_Access;
   function "=" (Left, Right : AndroidAPI9KeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References."=";
   subtype AndroidAPI9KeyFactory_Access_Array_Access_Array is org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References.AndroidAPI9KeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidAPI9KeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References."=";
   subtype AndroidAPI9KeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References.AndroidAPI9KeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidAPI9KeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidAPI9KeyFactory_Package_References."=";

   type AndroidAPI9KeyFactory is new AndroidKeyFactory with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out AndroidAPI9KeyFactory'Class);
   function Create return AndroidAPI9KeyFactory_Access;
   function getInstance return AndroidAPI9KeyFactory_Access;

end org.allbinary.game.input.AndroidAPI9KeyFactory_Package;



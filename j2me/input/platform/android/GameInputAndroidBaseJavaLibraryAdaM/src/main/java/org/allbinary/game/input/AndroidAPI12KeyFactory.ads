--  Generated Code Do Not Modify

limited with org.allbinary.game.input.AndroidAPI12KeyFactory_Package;
package org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References is
   type AndroidAPI12KeyFactory_Access is access all org.allbinary.game.input.AndroidAPI12KeyFactory_Package.AndroidAPI12KeyFactory'Class;
   type AndroidAPI12KeyFactory_Access_Array is array (Natural range <>) of AndroidAPI12KeyFactory_Access;
   type AndroidAPI12KeyFactory_Access_Array_Access is access all AndroidAPI12KeyFactory_Access_Array;
   type AndroidAPI12KeyFactory_Access_Array_Access_Array is array (Natural range <>) of AndroidAPI12KeyFactory_Access_Array_Access;
   type AndroidAPI12KeyFactory_Access_Array_Access_Array_Access is access all AndroidAPI12KeyFactory_Access_Array_Access_Array;
end org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References;

with org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.AndroidAPI9KeyFactory_Package; use org.allbinary.game.input.AndroidAPI9KeyFactory_Package;

package org.allbinary.game.input.AndroidAPI12KeyFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AndroidAPI12KeyFactory_Access is org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References.AndroidAPI12KeyFactory_Access;
   function "=" (Left, Right : AndroidAPI12KeyFactory_Access) return Boolean renames org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References."=";
   subtype AndroidAPI12KeyFactory_Access_Array is org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References.AndroidAPI12KeyFactory_Access_Array;
   function "=" (Left, Right : AndroidAPI12KeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References."=";
   subtype AndroidAPI12KeyFactory_Access_Array_Access is org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References.AndroidAPI12KeyFactory_Access_Array_Access;
   function "=" (Left, Right : AndroidAPI12KeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References."=";
   subtype AndroidAPI12KeyFactory_Access_Array_Access_Array is org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References.AndroidAPI12KeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidAPI12KeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References."=";
   subtype AndroidAPI12KeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References.AndroidAPI12KeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidAPI12KeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidAPI12KeyFactory_Package_References."=";

   type AndroidAPI12KeyFactory is new AndroidAPI9KeyFactory with null record;
   instance12 : Java_Object_Access;

   procedure Initialize (This : in out AndroidAPI12KeyFactory'Class);
   function Create return AndroidAPI12KeyFactory_Access;
   function getAPI12Instance return AndroidAPI12KeyFactory_Access;

end org.allbinary.game.input.AndroidAPI12KeyFactory_Package;



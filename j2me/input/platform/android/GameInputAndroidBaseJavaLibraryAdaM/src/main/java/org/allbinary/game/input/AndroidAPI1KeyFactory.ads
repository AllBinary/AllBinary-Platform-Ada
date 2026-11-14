--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.input.AndroidAPI1KeyFactory_Package;
package org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References is
   type AndroidAPI1KeyFactory_Access is access all org.allbinary.game.input.AndroidAPI1KeyFactory_Package.AndroidAPI1KeyFactory'Class;
   type AndroidAPI1KeyFactory_Access_Array is array (Natural range <>) of AndroidAPI1KeyFactory_Access;
   type AndroidAPI1KeyFactory_Access_Array_Access is access all AndroidAPI1KeyFactory_Access_Array;
   type AndroidAPI1KeyFactory_Access_Array_Access_Array is array (Natural range <>) of AndroidAPI1KeyFactory_Access_Array_Access;
   type AndroidAPI1KeyFactory_Access_Array_Access_Array_Access is access all AndroidAPI1KeyFactory_Access_Array_Access_Array;
   type AndroidAPI1KeyFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidAPI1KeyFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidAPI1KeyFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidAPI1KeyFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidAPI1KeyFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidAPI1KeyFactory_Access_Array_Access is (if Value /= null and then Value.all in AndroidAPI1KeyFactory_Access_Array_Object'Class then AndroidAPI1KeyFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidAPI1KeyFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidAPI1KeyFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidAPI1KeyFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidAPI1KeyFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidAPI1KeyFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidAPI1KeyFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidAPI1KeyFactory_Access_Array_Access_Array_Object'Class then AndroidAPI1KeyFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References;

with org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.AndroidKeyFactory_Package; use org.allbinary.game.input.AndroidKeyFactory_Package;

package org.allbinary.game.input.AndroidAPI1KeyFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AndroidAPI1KeyFactory_Access is org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.AndroidAPI1KeyFactory_Access;
   function "=" (Left, Right : AndroidAPI1KeyFactory_Access) return Boolean renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References."=";
   subtype AndroidAPI1KeyFactory_Access_Array is org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.AndroidAPI1KeyFactory_Access_Array;
   function "=" (Left, Right : AndroidAPI1KeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References."=";
   subtype AndroidAPI1KeyFactory_Access_Array_Access is org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.AndroidAPI1KeyFactory_Access_Array_Access;
   function "=" (Left, Right : AndroidAPI1KeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References."=";
   function Java_Box (Value : AndroidAPI1KeyFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.Java_Box;
   function Java_Unbox_AndroidAPI1KeyFactory_Access_Array (Value : access Java_Object'Class) return AndroidAPI1KeyFactory_Access_Array_Access renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.Java_Unbox_AndroidAPI1KeyFactory_Access_Array;
   subtype AndroidAPI1KeyFactory_Access_Array_Access_Array is org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.AndroidAPI1KeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidAPI1KeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References."=";
   subtype AndroidAPI1KeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.AndroidAPI1KeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidAPI1KeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References."=";
   function Java_Box (Value : AndroidAPI1KeyFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.Java_Box;
   function Java_Unbox_AndroidAPI1KeyFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidAPI1KeyFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.AndroidAPI1KeyFactory_Package_References.Java_Unbox_AndroidAPI1KeyFactory_Access_Array_Access_Array;

   type AndroidAPI1KeyFactory is new AndroidKeyFactory with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out AndroidAPI1KeyFactory'Class);
   function Create return AndroidAPI1KeyFactory_Access;
   function getInstance return AndroidAPI1KeyFactory_Access;

end org.allbinary.game.input.AndroidAPI1KeyFactory_Package;



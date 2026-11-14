-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.ChallengerInterface_Package;
package org.allbinary.game.ChallengerInterface_Package_References is
   type ChallengerInterface_Access is access all org.allbinary.game.ChallengerInterface_Package.ChallengerInterface'Class;
   type ChallengerInterface_Access_Array is array (Natural range <>) of ChallengerInterface_Access;
   type ChallengerInterface_Access_Array_Access is access all ChallengerInterface_Access_Array;
   type ChallengerInterface_Access_Array_Access_Array is array (Natural range <>) of ChallengerInterface_Access_Array_Access;
   type ChallengerInterface_Access_Array_Access_Array_Access is access all ChallengerInterface_Access_Array_Access_Array;
   type ChallengerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ChallengerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ChallengerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ChallengerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ChallengerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ChallengerInterface_Access_Array_Access is (if Value /= null and then Value.all in ChallengerInterface_Access_Array_Object'Class then ChallengerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ChallengerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ChallengerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ChallengerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ChallengerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ChallengerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ChallengerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ChallengerInterface_Access_Array_Access_Array_Object'Class then ChallengerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ChallengerInterface_Package_References;

with org.allbinary.game.ChallengerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ChallengerInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ChallengerInterface is interface;
   subtype ChallengerInterface_Access is org.allbinary.game.ChallengerInterface_Package_References.ChallengerInterface_Access;
   function "=" (Left, Right : ChallengerInterface_Access) return Boolean renames org.allbinary.game.ChallengerInterface_Package_References."=";
   subtype ChallengerInterface_Access_Array is org.allbinary.game.ChallengerInterface_Package_References.ChallengerInterface_Access_Array;
   function "=" (Left, Right : ChallengerInterface_Access_Array) return Boolean renames org.allbinary.game.ChallengerInterface_Package_References."=";
   subtype ChallengerInterface_Access_Array_Access is org.allbinary.game.ChallengerInterface_Package_References.ChallengerInterface_Access_Array_Access;
   function "=" (Left, Right : ChallengerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.ChallengerInterface_Package_References."=";
   function Java_Box (Value : ChallengerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ChallengerInterface_Package_References.Java_Box;
   function Java_Unbox_ChallengerInterface_Access_Array (Value : access Java_Object'Class) return ChallengerInterface_Access_Array_Access renames org.allbinary.game.ChallengerInterface_Package_References.Java_Unbox_ChallengerInterface_Access_Array;
   subtype ChallengerInterface_Access_Array_Access_Array is org.allbinary.game.ChallengerInterface_Package_References.ChallengerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ChallengerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ChallengerInterface_Package_References."=";
   subtype ChallengerInterface_Access_Array_Access_Array_Access is org.allbinary.game.ChallengerInterface_Package_References.ChallengerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ChallengerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ChallengerInterface_Package_References."=";
   function Java_Box (Value : ChallengerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ChallengerInterface_Package_References.Java_Box;
   function Java_Unbox_ChallengerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ChallengerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.ChallengerInterface_Package_References.Java_Unbox_ChallengerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ChallengerInterface (Value : ChallengerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setWinner (This : in out ChallengerInterface; isWinner : Boolean) is abstract;

end org.allbinary.game.ChallengerInterface_Package;



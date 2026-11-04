--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

limited with org.allbinary.game.input.PCGameKey_Package;
package org.allbinary.game.input.PCGameKey_Package_References is
   type PCGameKey_Access is access all org.allbinary.game.input.PCGameKey_Package.PCGameKey'Class;
   type PCGameKey_Access_Array is array (Natural range <>) of PCGameKey_Access;
   type PCGameKey_Access_Array_Access is access all PCGameKey_Access_Array;
   type PCGameKey_Access_Array_Access_Array is array (Natural range <>) of PCGameKey_Access_Array_Access;
   type PCGameKey_Access_Array_Access_Array_Access is access all PCGameKey_Access_Array_Access_Array;
end org.allbinary.game.input.PCGameKey_Package_References;

with org.allbinary.game.input.PCGameKey_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.PCGameKey_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PCGameKey_Access is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access;
   function "=" (Left, Right : PCGameKey_Access) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   subtype PCGameKey_Access_Array is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access_Array;
   function "=" (Left, Right : PCGameKey_Access_Array) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   subtype PCGameKey_Access_Array_Access is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access_Array_Access;
   function "=" (Left, Right : PCGameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   subtype PCGameKey_Access_Array_Access_Array is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access_Array_Access_Array;
   function "=" (Left, Right : PCGameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   subtype PCGameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PCGameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";

   type PCGameKey is new Input_Package.Input with null record;

   procedure Initialize (This : in out PCGameKey'Class; keyCode : Integer; name : Unbounded_String);
   function Create (keyCode : Integer; name : Unbounded_String) return PCGameKey_Access;
   function toString (This : in out PCGameKey) return Unbounded_String;
   function getString (keyCode : Integer) return Unbounded_String;
   procedure getString (keyCode : Integer);

end org.allbinary.game.input.PCGameKey_Package;



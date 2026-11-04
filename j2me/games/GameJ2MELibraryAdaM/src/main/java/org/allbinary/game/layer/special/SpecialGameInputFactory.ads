-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.game.layer.special.SpecialGameInputFactory_Package;
package org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References is
   type SpecialGameInputFactory_Access is access all org.allbinary.game.layer.special.SpecialGameInputFactory_Package.SpecialGameInputFactory'Class;
   type SpecialGameInputFactory_Access_Array is array (Natural range <>) of SpecialGameInputFactory_Access;
   type SpecialGameInputFactory_Access_Array_Access is access all SpecialGameInputFactory_Access_Array;
   type SpecialGameInputFactory_Access_Array_Access_Array is array (Natural range <>) of SpecialGameInputFactory_Access_Array_Access;
   type SpecialGameInputFactory_Access_Array_Access_Array_Access is access all SpecialGameInputFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References;

with org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.special.SpecialGameInput_Package;
with org.allbinary.game.layer.special.SpecialGameInput_Package_References;

package org.allbinary.game.layer.special.SpecialGameInputFactory_Package is

   package Reference_Types is
   subtype SpecialGameInput_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access;
   use type SpecialGameInput_Access;
   subtype SpecialGameInput_Access_Array is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array;
   use type SpecialGameInput_Access_Array;
   subtype SpecialGameInput_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access;
   use type SpecialGameInput_Access_Array_Access;
   subtype SpecialGameInput_Access_Array_Access_Array is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access_Array;
   use type SpecialGameInput_Access_Array_Access_Array;
   subtype SpecialGameInput_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access_Array_Access;
   use type SpecialGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SpecialGameInputFactory_Access is org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References.SpecialGameInputFactory_Access;
   function "=" (Left, Right : SpecialGameInputFactory_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References."=";
   subtype SpecialGameInputFactory_Access_Array is org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References.SpecialGameInputFactory_Access_Array;
   function "=" (Left, Right : SpecialGameInputFactory_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References."=";
   subtype SpecialGameInputFactory_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References.SpecialGameInputFactory_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInputFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References."=";
   subtype SpecialGameInputFactory_Access_Array_Access_Array is org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References.SpecialGameInputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialGameInputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References."=";
   subtype SpecialGameInputFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References.SpecialGameInputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputFactory_Package_References."=";

   type SpecialGameInputFactory is new Java_Object with null record;
   NO_SPECIAL_GAME_INPUT : SpecialGameInput_Access;

   procedure Initialize (This : in out SpecialGameInputFactory'Class);
   function Create return SpecialGameInputFactory_Access;

end org.allbinary.game.layer.special.SpecialGameInputFactory_Package;



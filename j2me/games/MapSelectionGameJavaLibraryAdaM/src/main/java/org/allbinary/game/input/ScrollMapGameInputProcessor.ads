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

limited with org.allbinary.game.input.ScrollMapGameInputProcessor_Package;
package org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References is
   type ScrollMapGameInputProcessor_Access is access all org.allbinary.game.input.ScrollMapGameInputProcessor_Package.ScrollMapGameInputProcessor'Class;
   type ScrollMapGameInputProcessor_Access_Array is array (Natural range <>) of ScrollMapGameInputProcessor_Access;
   type ScrollMapGameInputProcessor_Access_Array_Access is access all ScrollMapGameInputProcessor_Access_Array;
   type ScrollMapGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of ScrollMapGameInputProcessor_Access_Array_Access;
   type ScrollMapGameInputProcessor_Access_Array_Access_Array_Access is access all ScrollMapGameInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References;

with org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
limited with org.allbinary.game.input.ScrollMapPlayerGameInput_Package;
with org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References;

package org.allbinary.game.input.ScrollMapGameInputProcessor_Package is

   package Reference_Types is
   subtype ScrollMapPlayerGameInput_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access;
   use type ScrollMapPlayerGameInput_Access;
   subtype ScrollMapPlayerGameInput_Access_Array is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array;
   use type ScrollMapPlayerGameInput_Access_Array;
   subtype ScrollMapPlayerGameInput_Access_Array_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access;
   use type ScrollMapPlayerGameInput_Access_Array_Access;
   subtype ScrollMapPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access_Array;
   use type ScrollMapPlayerGameInput_Access_Array_Access_Array;
   subtype ScrollMapPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access_Array_Access;
   use type ScrollMapPlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScrollMapGameInputProcessor_Access is org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References.ScrollMapGameInputProcessor_Access;
   function "=" (Left, Right : ScrollMapGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References."=";
   subtype ScrollMapGameInputProcessor_Access_Array is org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References.ScrollMapGameInputProcessor_Access_Array;
   function "=" (Left, Right : ScrollMapGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References."=";
   subtype ScrollMapGameInputProcessor_Access_Array_Access is org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References.ScrollMapGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : ScrollMapGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References."=";
   subtype ScrollMapGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References.ScrollMapGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References."=";
   subtype ScrollMapGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References.ScrollMapGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.ScrollMapGameInputProcessor_Package_References."=";

   type ScrollMapGameInputProcessor is new GameInputProcessor with record
      scrollMapPlayerGameInput : ScrollMapPlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out ScrollMapGameInputProcessor'Class; scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class);
   function Create (scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class) return ScrollMapGameInputProcessor_Access;

end org.allbinary.game.input.ScrollMapGameInputProcessor_Package;



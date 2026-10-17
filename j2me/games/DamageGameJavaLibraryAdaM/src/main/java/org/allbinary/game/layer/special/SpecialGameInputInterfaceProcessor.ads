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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package; use org.allbinary.game.layer.special.SpecialGameInputInterface_Package;

package org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor_Package is

   package GameInputProcessor_Package renames Standard.org.allbinary.game.input.GameInputProcessor_Package;

   type SpecialGameInputInterfaceProcessor is tagged;
   type SpecialGameInputInterfaceProcessor_Access is access all SpecialGameInputInterfaceProcessor'Class;
   type SpecialGameInputInterfaceProcessor_Access_Array is array (Natural range <>) of SpecialGameInputInterfaceProcessor_Access;
   type SpecialGameInputInterfaceProcessor_Access_Array_Access is access all SpecialGameInputInterfaceProcessor_Access_Array;

   type SpecialGameInputInterfaceProcessor is new GameInputProcessor with record
      specialGameInputInterface : SpecialGameInputInterface_Access;
   end record;

   procedure Initialize (This : in out SpecialGameInputInterfaceProcessor'Class; collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access);
   function Create (collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access) return SpecialGameInputInterfaceProcessor_Access;

end org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor_Package;



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
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;

package org.allbinary.game.layer.special.SpecialGameInputProcessor_Package is

   package GameInputProcessor_Package renames Standard.org.allbinary.game.input.GameInputProcessor_Package;

   type SpecialGameInputProcessor is tagged;
   type SpecialGameInputProcessor_Access is access all SpecialGameInputProcessor'Class;
   type SpecialGameInputProcessor_Access_Array is array (Natural range <>) of SpecialGameInputProcessor_Access;
   type SpecialGameInputProcessor_Access_Array_Access is access all SpecialGameInputProcessor_Access_Array;

   type SpecialGameInputProcessor is new GameInputProcessor with record
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
   end record;

   procedure Initialize (This : in out SpecialGameInputProcessor'Class; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access);
   function Create (collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) return SpecialGameInputProcessor_Access;

end org.allbinary.game.layer.special.SpecialGameInputProcessor_Package;



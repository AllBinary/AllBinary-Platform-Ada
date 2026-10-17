-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;

package org.allbinary.game.layer.unit.UnitGameInputProcessor_Package is

   package GameInputProcessor_Package renames Standard.org.allbinary.game.input.GameInputProcessor_Package;

   type UnitGameInputProcessor is tagged;
   type UnitGameInputProcessor_Access is access all UnitGameInputProcessor'Class;
   type UnitGameInputProcessor_Access_Array is array (Natural range <>) of UnitGameInputProcessor_Access;
   type UnitGameInputProcessor_Access_Array_Access is access all UnitGameInputProcessor_Access_Array;

   type UnitGameInputProcessor is new GameInputProcessor with record
      unitLayer : UnitLayer_Access;
   end record;

   procedure Initialize (This : in out UnitGameInputProcessor'Class; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class);
   function Create (unitLayer_Param : access UnitLayer_Package.UnitLayer'Class) return UnitGameInputProcessor_Access;

end org.allbinary.game.layer.unit.UnitGameInputProcessor_Package;



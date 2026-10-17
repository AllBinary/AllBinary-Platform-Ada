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
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;

package org.allbinary.physics.movement.MovementInterface_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;

   type MovementInterface is interface;
   type MovementInterface_Access is access all MovementInterface'Class;
   type MovementInterface_Access_Array is array (Natural range <>) of MovementInterface_Access;
   type MovementInterface_Access_Array_Access is access all MovementInterface_Access_Array;
   procedure init (This : in out MovementInterface; speedBasicDecimal_Param : access BasicDecimal'Class; angle : Integer; otherAngle : Integer) is abstract;
   procedure process (This : in out MovementInterface; layer_Param : access AllBinaryGameLayer'Class) is abstract;
   procedure stop (This : in out MovementInterface) is abstract;

end org.allbinary.physics.movement.MovementInterface_Package;



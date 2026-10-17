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
with org.allbinary.game.layer.SensorAction_Package; use org.allbinary.game.layer.SensorAction_Package;

package org.allbinary.game.layer.SensorActionFactory_Package is


   type SensorActionFactory is tagged;
   type SensorActionFactory_Access is access all SensorActionFactory'Class;
   type SensorActionFactory_Access_Array is array (Natural range <>) of SensorActionFactory_Access;
   type SensorActionFactory_Access_Array_Access is access all SensorActionFactory_Access_Array;

   type SensorActionFactory is new Java_Object with record
      ATTACK : SensorAction_Access;
      EVADE : SensorAction_Access;
   end record;
   instance : SensorActionFactory_Access;

   procedure Initialize (This : in out SensorActionFactory'Class);
   function Create return SensorActionFactory_Access;
   function getInstance return SensorActionFactory_Access;

end org.allbinary.game.layer.SensorActionFactory_Package;



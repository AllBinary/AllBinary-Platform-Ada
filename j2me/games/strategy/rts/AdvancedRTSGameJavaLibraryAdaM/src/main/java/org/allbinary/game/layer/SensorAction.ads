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

package org.allbinary.game.layer.SensorAction_Package is


   type SensorAction is tagged;
   type SensorAction_Access is access all SensorAction'Class;
   type SensorAction_Access_Array is array (Natural range <>) of SensorAction_Access;
   type SensorAction_Access_Array_Access is access all SensorAction_Access_Array;

   type SensorAction is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out SensorAction'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return SensorAction_Access;

end org.allbinary.game.layer.SensorAction_Package;



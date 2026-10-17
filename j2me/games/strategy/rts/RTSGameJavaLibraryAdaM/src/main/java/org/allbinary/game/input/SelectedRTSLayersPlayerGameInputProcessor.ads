-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package; use org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;

package org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package is


   type SelectedRTSLayersPlayerGameInputProcessor is tagged;
   type SelectedRTSLayersPlayerGameInputProcessor_Access is access all SelectedRTSLayersPlayerGameInputProcessor'Class;
   type SelectedRTSLayersPlayerGameInputProcessor_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerGameInputProcessor_Access;
   type SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access is access all SelectedRTSLayersPlayerGameInputProcessor_Access_Array;

   type SelectedRTSLayersPlayerGameInputProcessor is new GameInputProcessor with record
      selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out SelectedRTSLayersPlayerGameInputProcessor'Class; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput'Class);
   function Create (selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput'Class) return SelectedRTSLayersPlayerGameInputProcessor_Access;

end org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package;



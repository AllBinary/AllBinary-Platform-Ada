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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.input.ScrollMapGameInputProcessor_Package; use org.allbinary.game.input.ScrollMapGameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapPlayerGameInput_Package; use org.allbinary.game.input.ScrollMapPlayerGameInput_Package;

package org.allbinary.game.input.ScrollMapRightGameInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type ScrollMapRightGameInputProcessor is tagged;
   type ScrollMapRightGameInputProcessor_Access is access all ScrollMapRightGameInputProcessor'Class;
   type ScrollMapRightGameInputProcessor_Access_Array is array (Natural range <>) of ScrollMapRightGameInputProcessor_Access;
   type ScrollMapRightGameInputProcessor_Access_Array_Access is access all ScrollMapRightGameInputProcessor_Access_Array;

   type ScrollMapRightGameInputProcessor is new ScrollMapGameInputProcessor with null record;

   procedure Initialize (This : in out ScrollMapRightGameInputProcessor'Class; scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput'Class);
   function Create (scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput'Class) return ScrollMapRightGameInputProcessor_Access;
   procedure processEvent (This : in out ScrollMapRightGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class);

end org.allbinary.game.input.ScrollMapRightGameInputProcessor_Package;



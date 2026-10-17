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
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.special.SpecialGameInputFactory_Package; use org.allbinary.game.layer.special.SpecialGameInputFactory_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package; use org.allbinary.game.layer.special.SpecialGameInputInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package is

   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package SpecialGameInputFactory_Package renames Standard.org.allbinary.game.layer.special.SpecialGameInputFactory_Package;
   package SpecialGameInputInterface_Package renames Standard.org.allbinary.game.layer.special.SpecialGameInputInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type CheatGameInputProcessor is tagged;
   type CheatGameInputProcessor_Access is access all CheatGameInputProcessor'Class;
   type CheatGameInputProcessor_Access_Array is array (Natural range <>) of CheatGameInputProcessor_Access;
   type CheatGameInputProcessor_Access_Array_Access is access all CheatGameInputProcessor_Access_Array;

   type CheatGameInputProcessor is new PlayerGameInput with record
      PROCESS_GAME : Unbounded_String;
      gameCanvas : AllBinaryGameCanvas_Access;
      gameKeyFactory : GameKeyFactory_Access;
   end record;
   inputProcessor : SpecialGameInputInterface_Access;

   procedure Initialize (This : in out CheatGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas'Class) return CheatGameInputProcessor_Access;
   procedure update (This : in out CheatGameInputProcessor);

end org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package;



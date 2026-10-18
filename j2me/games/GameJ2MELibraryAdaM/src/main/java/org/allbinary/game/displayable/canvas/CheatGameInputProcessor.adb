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


with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.special.SpecialGameInputFactory_Package; use org.allbinary.game.layer.special.SpecialGameInputFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package SpecialGameInputFactory_Package renames Standard.org.allbinary.game.layer.special.SpecialGameInputFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out CheatGameInputProcessor'Class) is
   begin
      null;
      This.PROCESS_GAME := To_Unbounded_String ("processGame");
      
      This.gameKeyFactory := GameKeyFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CheatGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
   begin
        PlayerGameInput_Package.Initialize (This, BasicArrayListD_Package.Create, BasicArrayListD_Package.Create, -(1));
        Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return CheatGameInputProcessor_Access is
      This : constant CheatGameInputProcessor_Access := new CheatGameInputProcessor;
   begin
      CheatGameInputProcessor_Package.Initialize (This.all, gameCanvas_Param);
      return This;
   end Create;

   procedure update (This : in out CheatGameInputProcessor) is
      gameLayerManager : AllBinaryGameLayerManager_Access;
      list : BasicArrayList_Access;
      size : Integer;
      anyType : Java_Object_Access;
      key : Integer;
      index : Integer;
   begin
        begin
            gameLayerManager := This.gameCanvas.getLayerManager;
            list := CheatGameInputProcessor'Class (This).getGameKeyEventList;
            size := list.size;
            for index in 0 .. (size) - 1 loop
                anyType := list.objectArray (index);
                key := GameKeyEventUtil_Package.getKey (anyType);
                if (key) = (This.gameKeyFactory.LEVEL_DOWN.getId) then
                    CheatGameInputProcessor_Package.inputProcessor.strafeLeft;
                    exit;
                elsif (key) = (This.gameKeyFactory.LEVEL_UP.getId) then
                    CheatGameInputProcessor_Package.inputProcessor.strafeRight;
                    exit;
                end if;
                if (key) = (This.gameKeyFactory.LEFT.getId) then
                    CheatGameInputProcessor_Package.inputProcessor.left;
                    exit;
                elsif (key) = (This.gameKeyFactory.RIGHT.getId) then
                    CheatGameInputProcessor_Package.inputProcessor.right;
                    exit;
                elsif (key) = (This.gameKeyFactory.UP.getId) then
                    CheatGameInputProcessor_Package.inputProcessor.up;
                    exit;
                elsif (key) = (This.gameKeyFactory.DOWN.getId) then
                    CheatGameInputProcessor_Package.inputProcessor.down;
                    exit;
                elsif (key) = (This.gameKeyFactory.KEY_NUM1.getId) then
                    CheatGameInputProcessor_Package.inputProcessor.special1 (gameLayerManager, GameKeyEvent_Package.NONE);
                    exit;
                elsif (key) = (This.gameKeyFactory.KEY_NUM3.getId) then
                    CheatGameInputProcessor_Package.inputProcessor.special2 (gameLayerManager, GameKeyEvent_Package.NONE);
                    exit;
                end if;
            end loop;
            list.clear;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CheatGameInputProcessor_Access'(This'Unchecked_Access), This.commonStrings.UPDATE, e);
                end;
        end;
   end update;

begin
   null;
   inputProcessor := SpecialGameInputInterface_Access (SpecialGameInputFactory_Package.NO_SPECIAL_GAME_INPUT);

end org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package;



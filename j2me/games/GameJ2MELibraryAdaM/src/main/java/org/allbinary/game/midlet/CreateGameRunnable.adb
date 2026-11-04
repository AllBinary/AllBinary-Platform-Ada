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


with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.midlet.DemoGameMidlet_Package; use org.allbinary.game.midlet.DemoGameMidlet_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package; use org.allbinary.game.midlet.DemoGameMidletEvent_Package;
with org.allbinary.game.midlet.DemoGameMidletStateFactory_Package; use org.allbinary.game.midlet.DemoGameMidletStateFactory_Package;
with org.allbinary.game.midlet.DemoGameMidletEventHandler_Package; use org.allbinary.game.midlet.DemoGameMidletEventHandler_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.midlet.DemoGameMidlet_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package;
with org.allbinary.game.midlet.DemoGameMidletEventHandler_Package;
with org.allbinary.game.midlet.DemoGameMidletState_Package;
with org.allbinary.game.midlet.DemoGameMidletStateFactory_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.midlet.GameMidlet_Package;
with org.allbinary.game.midlet.GameMidletStateFactory_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;

package body org.allbinary.game.midlet.CreateGameRunnable_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package MyCommandsFactory_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype DemoGameMidlet_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access;
   function "=" (Left, Right : DemoGameMidlet_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   subtype DemoGameMidlet_Access_Array is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array;
   function "=" (Left, Right : DemoGameMidlet_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   subtype DemoGameMidlet_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidlet_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   subtype DemoGameMidlet_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   subtype DemoGameMidlet_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   subtype DemoGameMidletEvent_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access;
   function "=" (Left, Right : DemoGameMidletEvent_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   subtype DemoGameMidletEvent_Access_Array is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array;
   function "=" (Left, Right : DemoGameMidletEvent_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   subtype DemoGameMidletEvent_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletEvent_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   subtype DemoGameMidletEvent_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidletEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   subtype DemoGameMidletEvent_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   procedure Initialize_Fields (This : in out CreateGameRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CreateGameRunnable'Class; demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      demoGameMidlet : constant DemoGameMidlet_Access := DemoGameMidlet_Access (demoGameMidlet_Param);
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
      Initialize_Fields (This);
        This.demoGameMidlet := demoGameMidlet;
        This.hashtable := hashtable;
        This.startGameMidletEvent := DemoGameMidletEvent_Package.Create (CreateGameRunnable_Access'(This'Unchecked_Access), DemoGameMidletStateFactory_Package.getInstance.START_GAME);
   end Initialize;

   function Create (demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return CreateGameRunnable_Access is
      This : constant CreateGameRunnable_Access := new CreateGameRunnable;
   begin
      CreateGameRunnable_Package.Initialize (This.all, demoGameMidlet_Param, hashtable_Param);
      return This;
   end Create;

   procedure run (This : in out CreateGameRunnable) is
      progressCanvas : ProgressCanvas_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, CreateGameRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            This.demoGameMidlet.commandAction (MyCommandsFactory_Package.getInstance.SET_DISPLAYABLE, progressCanvas);
            This.demoGameMidlet.stopGameCanvasRunnableInterface;
            This.demoGameMidlet.setGameCanvasRunnableInterface (This.demoGameMidlet.createGameCanvasRunnableInterface);
            This.demoGameMidlet.getGameCanvasRunnableInterface.setLoadStateHashtable (This.hashtable);
            This.demoGameMidlet.startGameCanvasRunnableInterface;
            DemoGameMidletEventHandler_Package.getInstance.fireEvent (This.startGameMidletEvent);
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, CreateGameRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CreateGameRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.game.midlet.CreateGameRunnable_Package;



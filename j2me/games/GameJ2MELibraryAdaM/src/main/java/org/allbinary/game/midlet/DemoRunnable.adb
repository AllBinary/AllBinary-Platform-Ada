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


with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.game.midlet.DemoGameMidlet_Package; use org.allbinary.game.midlet.DemoGameMidlet_Package;
with org.allbinary.game.midlet.DemoGameMidlet_Package_References;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package; use org.allbinary.game.midlet.DemoGameMidletEvent_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package_References;
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

package body org.allbinary.game.midlet.DemoRunnable_Package is

   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package MyCommandsFactory_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
   procedure Initialize_Fields (This : in out DemoRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out DemoRunnable'Class; demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class) is
      demoGameMidlet : constant DemoGameMidlet_Access := DemoGameMidlet_Access (demoGameMidlet_Param);
   begin
      Initialize_Fields (This);
        This.demoGameMidlet := demoGameMidlet;
        This.startDemoGameMidletEvent := DemoGameMidletEvent_Package.Create (This.demoGameMidlet, DemoGameMidletStateFactory_Package.getInstance.START_DEMO);
   end Initialize;

   function Create (demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class) return DemoRunnable_Access is
      This : constant DemoRunnable_Access := new DemoRunnable;
   begin
      DemoRunnable_Package.Initialize (This.all, demoGameMidlet_Param);
      return This;
   end Create;

   procedure run (This : in out DemoRunnable) is
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (To_Unbounded_String ("GameCanvasRunnableInterface")).toString, DemoRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.demoGameMidlet.commandAction (MyCommandsFactory_Package.getInstance.SET_DISPLAYABLE, ProgressCanvasFactory_Package.getInstance);
            This.demoGameMidlet.setGameCanvasRunnableInterface (This.demoGameMidlet.createDemoGameCanvasRunnableInterface);
            This.demoGameMidlet.demoSetup;
            DemoGameMidletEventHandler_Package.getInstance.fireEvent (This.startDemoGameMidletEvent);
            This.demoGameMidlet.startGameCanvasRunnableInterface;
            This.demoGameMidlet.postDemoSetup;
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, DemoRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, DemoRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.game.midlet.DemoRunnable_Package;



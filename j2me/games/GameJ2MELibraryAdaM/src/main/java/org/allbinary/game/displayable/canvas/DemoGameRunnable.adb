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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.thread.ThreadFactoryUtil_Package;

package body org.allbinary.game.displayable.canvas.DemoGameRunnable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
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
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype DemoCanvas_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access;
   function "=" (Left, Right : DemoCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   subtype DemoCanvas_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array;
   function "=" (Left, Right : DemoCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   subtype DemoCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access;
   function "=" (Left, Right : DemoCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   subtype DemoCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : DemoCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   subtype DemoCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvas_Package_References."=";
   procedure Initialize_Fields (This : in out DemoGameRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameRunnable'Class; demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) is
      demoCanvas : constant DemoCanvas_Access := DemoCanvas_Access (demoCanvas_Param);
   begin
      GameRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.demoCanvas := demoCanvas;
   end Initialize;

   function Create (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) return DemoGameRunnable_Access is
      This : constant DemoGameRunnable_Access := new DemoGameRunnable;
   begin
      DemoGameRunnable_Package.Initialize (This.all, demoCanvas_Param);
      return This;
   end Create;

   procedure run (This : in out DemoGameRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.demoCanvas.getLoopTimeHelperP.setStartTime (This.gameTickTimeDelayHelper.setStartTime);
            This.demoCanvas.processGame;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, DemoGameRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                end;
        end;
   end run;

   --  throws Exception
   procedure processLoopSleep (This : in out DemoGameRunnable) is
   begin
        This.demoCanvas.processLoopSleep;
   end processLoopSleep;

end org.allbinary.game.displayable.canvas.DemoGameRunnable_Package;



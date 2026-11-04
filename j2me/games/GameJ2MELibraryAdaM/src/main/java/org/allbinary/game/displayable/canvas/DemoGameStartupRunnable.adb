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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.thread.ThreadFactoryUtil_Package;

package body org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   procedure Initialize_Fields (This : in out DemoGameStartupRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameStartupRunnable'Class; demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) is
      demoCanvas : constant DemoCanvas_Access := DemoCanvas_Access (demoCanvas_Param);
   begin
      ABRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.demoCanvas := demoCanvas;
   end Initialize;

   function Create (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) return DemoGameStartupRunnable_Access is
      This : constant DemoGameStartupRunnable_Access := new DemoGameStartupRunnable;
   begin
      DemoGameStartupRunnable_Package.Initialize (This.all, demoCanvas_Param);
      return This;
   end Create;

   procedure run (This : in out DemoGameStartupRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            DemoGameStartupRunnable'Class (This).setRunning (True);
            This.demoCanvas.stopGameDemo;
            This.demoCanvas.create;
            This.demoCanvas.start;
            DemoGameStartupRunnable'Class (This).setRunning (False);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            DemoGameStartupRunnable'Class (This).setRunning (False);
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, DemoGameStartupRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                end;
        end;
   end run;

   function getType (This : in out DemoGameStartupRunnable) return Integer is
   begin
        return DemoGameStartupRunnable_Package.TYPE_Id;
   end getType;

begin
   null;
   TYPE_Id := 4;

end org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;



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


with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References;
with org.allbinary.thread.PrimaryThreadPool_Package; use org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package; use org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.midlet.DemoRunnable_Package; use org.allbinary.game.midlet.DemoRunnable_Package;
with org.allbinary.game.midlet.CreateGameRunnable_Package; use org.allbinary.game.midlet.CreateGameRunnable_Package;
with org.allbinary.game.midlet.CreateGameRunnable_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package;
with org.allbinary.game.midlet.DemoGameMidletState_Package;
with org.allbinary.game.midlet.DemoRunnable_Package;
with org.allbinary.game.midlet.GameMidletStateFactory_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;

package body org.allbinary.game.midlet.DemoGameMidlet_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package PrimaryThreadPool_Package renames Standard.org.allbinary.thread.PrimaryThreadPool_Package;
   package NullGameCanvasRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   subtype GameCanvasRunnableInterface_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype ClientInformationFactory_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access;
   function "=" (Left, Right : ClientInformationFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array;
   function "=" (Left, Right : ClientInformationFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   procedure Initialize_Fields (This : in out DemoGameMidlet'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) is
      clientInformationFactory : constant ClientInformationFactory_Access := ClientInformationFactory_Access (clientInformationFactory_Param);
   begin
        GameMidlet_Package.Initialize (This, clientInformationFactory);
   end Initialize;

   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) return DemoGameMidlet_Access is
      This : constant DemoGameMidlet_Access := new DemoGameMidlet;
   begin
      DemoGameMidlet_Package.Initialize (This.all, clientInformationFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function isContinue (This : in out DemoGameMidlet) return Boolean is
      hashtable : ABHashtable_Access;
   begin
        hashtable := DemoGameMidlet'Class (This).getStartStateHashtable;
        if ((hashtable) /= (null)) and then ((hashtable.size) > (0)) then
            return True;
        else
            return False;
        end if;
   end isContinue;

   function getHighestLevel (This : in out DemoGameMidlet) return Integer is
   begin
        return 1;
   end getHighestLevel;

   --  throws Exception
   function createDemoGameCanvasRunnableInterface (This : in out DemoGameMidlet) return GameCanvasRunnableInterface_Access is
   begin
        This.logUtil.putF (This.commonStrings.NOT_IMPLEMENTED, DemoGameMidlet_Access'(This'Unchecked_Access), This.commonStrings.CREATE);
        return GameCanvasRunnableInterface_Access (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE);
   end createDemoGameCanvasRunnableInterface;

   --  throws Exception
   function createGameCanvasRunnable (This : in out DemoGameMidlet; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) return GameCanvasRunnableInterface_Access is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end createGameCanvasRunnable;

   --  throws Exception
   function createGameCanvasRunnableInterface (This : in out DemoGameMidlet) return GameCanvasRunnableInterface_Access is
   begin
        return GameCanvasRunnableInterface_Access (DemoGameMidlet'Class (This).createGameCanvasRunnable (DemoGameMidlet'Class (This).createGameLayerManager));
   end createGameCanvasRunnableInterface;

   procedure demoSetup (This : in out DemoGameMidlet) is
   begin
        null;
   end demoSetup;

   procedure postDemoSetup (This : in out DemoGameMidlet) is
   begin
        null;
   end postDemoSetup;

   --  throws Exception
   procedure setDemo (This : in out DemoGameMidlet) is
      progressCanvas : ProgressCanvas_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, DemoGameMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("setDemo"));
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.start;
        PrimaryThreadPool_Package.getInstance.runTask (DemoRunnable_Package.Create (DemoGameMidlet_Access'(This'Unchecked_Access)));
   end setDemo;

   --  throws Exception
   procedure createGame (This : in out DemoGameMidlet) is
      CREATE_GAME : Unbounded_String;
      progressCanvas : ProgressCanvas_Access;
      hashtable : ABHashtable_Access;
   begin
        CREATE_GAME := To_Unbounded_String ("createGame");
        This.logUtil.putF (This.commonStrings.START, DemoGameMidlet_Access'(This'Unchecked_Access), CREATE_GAME);
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.start;
        hashtable := DemoGameMidlet'Class (This).getStartStateHashtable;
        DemoGameMidlet'Class (This).setStartStateHashtable (StdUtil_Package.getInstance.NULL_TABLE);
        PrimaryThreadPool_Package.getInstance.runTask (CreateGameRunnable_Package.Create (DemoGameMidlet_Access'(This'Unchecked_Access), hashtable));
        This.logUtil.putF (This.commonStrings.END_Id, DemoGameMidlet_Access'(This'Unchecked_Access), CREATE_GAME);
   end createGame;

   function isReady (This : in out DemoGameMidlet) return Boolean is
   begin
        return True;
   end isReady;

   procedure createGameCanvasRunnable (This : in out DemoGameMidlet; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      Java_Result : constant GameCanvasRunnableInterface_Access := DemoGameMidlet'Class (This).createGameCanvasRunnable (allBinaryGameLayerManager_Param => allBinaryGameLayerManager_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createGameCanvasRunnable;

end org.allbinary.game.midlet.DemoGameMidlet_Package;



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


package body org.allbinary.game.displayable.canvas.NullGameCanvas_Package is

   procedure Initialize_Fields (This : in out NullGameCanvas'Class) is
   begin
      null;
      This.runningNull := True;
   end Initialize_Fields;


   function createNull return NullGameCanvas_Access is
   begin
        begin
            return NullGameCanvas_Package.Create (AllBinaryGameLayerManager_Package.getNullInstance);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            LogUtil_Package.getInstance.put (CommonStrings_Package.getInstance.EXCEPTION_Id, To_Unbounded_String ("NullGameCanvas"), CommonStrings_Package.getInstance.GET_INSTANCE, e);
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end createNull;

   function getInstance return NullGameCanvas_Access is
   begin
        if (NullGameCanvas_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            NullGameCanvas_Package.instance := NullGameCanvas_Package.createNull;
        end if;
        return NullGameCanvas_Access (NullGameCanvas_Package.instance);
   end getInstance;

   --  throws Exception
   function createCanvas (gameLayerManager_Param : access AllBinaryGameLayerManager'Class) return NullGameCanvas_Access is
      gameLayerManager : AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (gameLayerManager_Param);
      nullGameCanvas : NullGameCanvas_Access;
   begin
        nullGameCanvas := NullGameCanvas_Package.Create (gameLayerManager);
        nullGameCanvas.setInitialized (True);
        nullGameCanvas.setTitle (NullGameCanvas_Package.NO_GAME);
        return nullGameCanvas;
   end createCanvas;

   procedure Initialize (This : in out NullGameCanvas'Class; gameLayerManager_Param : access AllBinaryGameLayerManager'Class) is
      gameLayerManager : AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (gameLayerManager_Param);
   begin
        AllBinaryGameCanvas_Package.Initialize (This, NullCommandListener_Package.NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory_Package.getInstance, BasicBuildGameInitializerFactory_Package.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, False);
        Initialize_Fields (This);
        AllBinaryGameCanvas (This).setWait (1200);
   end Initialize;

   function Create (gameLayerManager_Param : access AllBinaryGameLayerManager'Class) return NullGameCanvas_Access is
      This : constant NullGameCanvas_Access := new NullGameCanvas;
   begin
      NullGameCanvas_Package.Initialize (This.all, gameLayerManager_Param);
      return This;
   end Create;

   function isGameOver (This : in out NullGameCanvas) return Boolean is
   begin
        return False;
   end isGameOver;

   procedure setRunning (This : in out NullGameCanvas; running : Boolean) is
   begin
        This.runningNull := running;
   end setRunning;

   function isRunning (This : in out NullGameCanvas) return Boolean is
   begin
        return This.runningNull;
   end isRunning;

   procedure pause (This : in out NullGameCanvas) is
   begin
        This.setPaused (True);
   end pause;

   procedure unPause (This : in out NullGameCanvas) is
   begin
        This.setPaused (False);
   end unPause;

   procedure initCommands (This : in out NullGameCanvas; cmdListener_Param : access CommandListener'Class) is
      cmdListener : CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        This.removeAllCommands;
        This.setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure buildGameInit (This : in out NullGameCanvas; isProgress : Boolean) is
   begin
        null;
   end buildGameInit;

   procedure draw (This : in out NullGameCanvas; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end draw;

   procedure run (This : in out NullGameCanvas) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, NullGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, NullGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, NullGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

   function getType (This : in out NullGameCanvas) return Integer is
   begin
        return NullGameCanvas_Package.TYPE_Id;
   end getType;

   procedure createCanvas (gameLayerManager_Param : access AllBinaryGameLayerManager'Class) is
      Java_Result : constant NullGameCanvas_Access := createCanvas (gameLayerManager_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createCanvas;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;
   NO_GAME := To_Unbounded_String ("No Background Game");
   TYPE_Id := 1;

end org.allbinary.game.displayable.canvas.NullGameCanvas_Package;



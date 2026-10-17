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
            when e : others =>
            LogUtil_Package.getInstance.put (CommonStrings_Package.getInstance.EXCEPTION_Id, To_Unbounded_String ("NullGameCanvas"), CommonStrings_Package.getInstance.GET_INSTANCE, e);
            Java_Throw (Java_New_Exception ("RuntimeException"));
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
   function createCanvas (gameLayerManager : AllBinaryGameLayerManager_Access) return NullGameCanvas_Access is
      nullGameCanvas : NullGameCanvas_Access;
   begin
        nullGameCanvas := NullGameCanvas_Package.Create (gameLayerManager);
        nullGameCanvas.setInitialized (True);
        nullGameCanvas.setTitle (NullGameCanvas_Package.NO_GAME);
        return nullGameCanvas;
   end createCanvas;

   procedure Initialize (This : in out NullGameCanvas'Class; gameLayerManager : AllBinaryGameLayerManager_Access) is
   begin
        AllBinaryGameCanvas_Package.Initialize (This, NullCommandListener_Package.NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory_Package.getInstance, BasicBuildGameInitializerFactory_Package.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, False);
        Initialize_Fields (This);
        AllBinaryGameCanvas (This).setWait (1200);
   end Initialize;

   function Create (gameLayerManager : AllBinaryGameLayerManager_Access) return NullGameCanvas_Access is
      This : constant NullGameCanvas_Access := new NullGameCanvas;
   begin
      Initialize (This.all, gameLayerManager);
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

   procedure initCommands (This : in out NullGameCanvas; cmdListener : CommandListener_Access) is
   begin
        This.removeAllCommands;
        This.setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure buildGameInit (This : in out NullGameCanvas; isProgress : Boolean) is
   begin
        null;
   end buildGameInit;

   procedure draw (This : in out NullGameCanvas; graphics : Graphics_Access) is
   begin
        null;
   end draw;

   procedure run (This : in out NullGameCanvas) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
        end;
   end run;

   function getType (This : in out NullGameCanvas) return Integer is
   begin
        return NullGameCanvas_Package.TYPE_Id;
   end getType;

   procedure createNull is
      Java_Result : constant NullGameCanvas_Access := createNull;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNull;

   procedure getInstance is
      Java_Result : constant NullGameCanvas_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createCanvas (gameLayerManager : AllBinaryGameLayerManager_Access) is
      Java_Result : constant NullGameCanvas_Access := createCanvas (gameLayerManager);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createCanvas;

   procedure isGameOver (This : in out NullGameCanvas) is
      Java_Result : constant Boolean := NullGameCanvas'Class (This).isGameOver;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isGameOver;

   procedure isRunning (This : in out NullGameCanvas) is
      Java_Result : constant Boolean := NullGameCanvas'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

   procedure getType (This : in out NullGameCanvas) is
      Java_Result : constant Integer := NullGameCanvas'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;
   NO_GAME := To_Unbounded_String ("No Background Game");
   TYPE_Id := 1;

end org.allbinary.game.displayable.canvas.NullGameCanvas_Package;



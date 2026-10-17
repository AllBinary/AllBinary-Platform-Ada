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


package body org.allbinary.game.midlet.DemoGameMidlet_Package is

   procedure Initialize_Fields (This : in out DemoGameMidlet'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameMidlet'Class; clientInformationFactory : ClientInformationFactory_Access) is
   begin
        GameMidlet_Package.Initialize (This, clientInformationFactory);
   end Initialize;

   function Create (clientInformationFactory : ClientInformationFactory_Access) return DemoGameMidlet_Access is
      This : constant DemoGameMidlet_Access := new DemoGameMidlet;
   begin
      DemoGameMidlet_Package.Initialize (This.all, clientInformationFactory);
      return This;
   end Create;

   --  throws Exception
   function isContinue (This : in out DemoGameMidlet) return Boolean is
      hashtable : ABHashtable_Access;
   begin
        hashtable := This.getStartStateHashtable;
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
        This.logUtil.putF (This.commonStrings.NOT_IMPLEMENTED, This'Unchecked_Access, This.commonStrings.CREATE);
        return NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE;
   end createDemoGameCanvasRunnableInterface;

   --  throws Exception
   function createGameCanvasRunnable (This : in out DemoGameMidlet; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) return GameCanvasRunnableInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end createGameCanvasRunnable;

   --  throws Exception
   function createGameCanvasRunnableInterface (This : in out DemoGameMidlet) return GameCanvasRunnableInterface_Access is
   begin
        return This.createGameCanvasRunnable (This.createGameLayerManager);
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
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("setDemo"));
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.start;
        PrimaryThreadPool_Package.getInstance.runTask (DemoRunnable_Package.Create (This'Unchecked_Access));
   end setDemo;

   --  throws Exception
   procedure createGame (This : in out DemoGameMidlet) is
      CREATE_GAME : Unbounded_String;
      progressCanvas : ProgressCanvas_Access;
      hashtable : ABHashtable_Access;
   begin
        CREATE_GAME := To_Unbounded_String ("createGame");
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, CREATE_GAME);
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.start;
        hashtable := This.getStartStateHashtable;
        This.setStartStateHashtable (StdUtil_Package.getInstance.NULL_TABLE);
        PrimaryThreadPool_Package.getInstance.runTask (CreateGameRunnable_Package.Create (This'Unchecked_Access, hashtable));
        This.logUtil.putF (This.commonStrings.END_Id, This'Unchecked_Access, CREATE_GAME);
   end createGame;

   function isReady (This : in out DemoGameMidlet) return Boolean is
   begin
        return True;
   end isReady;

   procedure createGameCanvasRunnable (This : in out DemoGameMidlet; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
      Java_Result : constant GameCanvasRunnableInterface_Access := DemoGameMidlet'Class (This).createGameCanvasRunnable (allBinaryGameLayerManager);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createGameCanvasRunnable;

end org.allbinary.game.midlet.DemoGameMidlet_Package;



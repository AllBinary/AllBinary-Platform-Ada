-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.displayable.canvas.DemoGameBehavior_Package is

   procedure Initialize_Fields (This : in out DemoGameBehavior'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out DemoGameBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DemoGameBehavior_Access is
      This : constant DemoGameBehavior_Access := new DemoGameBehavior;
   begin
      DemoGameBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DemoGameBehavior_Access is
   begin
        return DemoGameBehavior_Package.instance;
   end getInstance;

   --  throws Exception
   procedure init (This : in out DemoGameBehavior) is
   begin
        null;
   end init;

   procedure pause (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end pause;

   procedure unPause (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end unPause;

   --  throws Exception
   procedure updateTouch (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end updateTouch;

   --  throws Exception
   procedure updateScreenButtonPaintable (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        allBinaryGameCanvas.setTouchPaintableP (NullPaintable_Package.getInstance);
   end updateScreenButtonPaintable;

   --  throws Exception
   procedure setGameState (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end setGameState;

   procedure removeAllGameKeyInputListeners (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end removeAllGameKeyInputListeners;

   --  throws Exception
   procedure updateEndGameProcessor (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end updateEndGameProcessor;

   --  throws Exception
   procedure buildGame (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end buildGame;

   --  throws Exception
   procedure run (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
      commonStrings : CommonStrings_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (GameTypeFactory_Package.getInstance.BOT.toString, This'Unchecked_Access, commonStrings.RUN);
   end run;

   --  throws Exception
   procedure setHighScore (This : in out DemoGameBehavior; abeClientInformation : AbeClientInformationInterface_Access; allBinaryGameCanvas : AllBinaryGameCanvas_Access; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean) is
   begin
        null;
   end setHighScore;

begin
   null;
   instance := DemoGameBehavior_Package.Create;

end org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;



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


package body org.allbinary.game.displayable.canvas.BaseGameBehavior_Package is

   procedure Initialize_Fields (This : in out BaseGameBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseGameBehavior'Class) is
   begin
      DemoGameBehavior_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseGameBehavior_Access is
      This : constant BaseGameBehavior_Access := new BaseGameBehavior;
   begin
      BaseGameBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DemoGameBehavior_Access is
   begin
        return BaseGameBehavior_Package.instanceC;
   end getInstance;

   --  throws Exception
   procedure init (This : in out BaseGameBehavior) is
      gameAdState : GameAdState_Access;
   begin
        gameAdState := GameAdStateFactory_Package.getInstance.getCurrentInstance;
        gameAdState.playingAdState;
   end init;

   procedure pause (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
      features : Features_Access;
      currentDisplayableFactory : CurrentDisplayableFactory_Access;
   begin
        features := Features_Package.getInstance;
        if features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL_AS_GAME_THREAD) then
            currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
            currentDisplayableFactory.setRunnable (allBinaryGameCanvas.gamePauseRunnable);
        end if;
   end pause;

   procedure unPause (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
      currentDisplayableFactory : CurrentDisplayableFactory_Access;
   begin
        if Features_Package.getInstance.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL_AS_GAME_THREAD) then
            currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
            currentDisplayableFactory.setRunnable (allBinaryGameCanvas.gameRunnable);
            currentDisplayableFactory.setDisplayable (allBinaryGameCanvas);
        end if;
   end unPause;

   --  throws Exception
   procedure updateTouch (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.updateTouch2;
   end updateTouch;

   --  throws Exception
   procedure updateScreenButtonPaintable (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.updateScreenButtonPaintable2;
   end updateScreenButtonPaintable;

   --  throws Exception
   procedure setGameState (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.updateGameState;
   end setGameState;

   procedure removeAllGameKeyInputListeners (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.removeAllGameKeyInputListeners2;
   end removeAllGameKeyInputListeners;

   --  throws Exception
   procedure updateEndGameProcessor (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.updateEndGameProcessor2;
   end updateEndGameProcessor;

   --  throws Exception
   procedure buildGame (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.buildGame2;
   end buildGame;

   --  throws Exception
   procedure run (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.run2;
   end run;

   --  throws Exception
   procedure setHighScore (This : in out BaseGameBehavior; abeClientInformation_Param : access AbeClientInformationInterface'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean) is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      allBinaryGameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.setHighScore2 (abeClientInformation, name, score, autoSubmit, isLast);
   end setHighScore;

begin
   null;
   instanceC := BaseGameBehavior_Package.Create;

end org.allbinary.game.displayable.canvas.BaseGameBehavior_Package;



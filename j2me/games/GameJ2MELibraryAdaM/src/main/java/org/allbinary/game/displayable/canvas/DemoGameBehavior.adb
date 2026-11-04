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


with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;

package body org.allbinary.game.displayable.canvas.DemoGameBehavior_Package is

   package GameTypeFactory_Package renames Standard.org.allbinary.game.GameTypeFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
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
        return DemoGameBehavior_Access (DemoGameBehavior_Package.instance);
   end getInstance;

   --  throws Exception
   procedure init (This : in out DemoGameBehavior) is
   begin
        null;
   end init;

   procedure pause (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end pause;

   procedure unPause (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end unPause;

   --  throws Exception
   procedure updateTouch (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end updateTouch;

   --  throws Exception
   procedure updateScreenButtonPaintable (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.setTouchPaintableP (NullPaintable_Package.getInstance);
   end updateScreenButtonPaintable;

   --  throws Exception
   procedure setGameState (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end setGameState;

   procedure removeAllGameKeyInputListeners (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end removeAllGameKeyInputListeners;

   --  throws Exception
   procedure updateEndGameProcessor (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end updateEndGameProcessor;

   --  throws Exception
   procedure buildGame (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end buildGame;

   --  throws Exception
   procedure run (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
      commonStrings : CommonStrings_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (GameTypeFactory_Package.getInstance.BOT.toString, DemoGameBehavior_Access'(This'Unchecked_Access), commonStrings.RUN);
   end run;

   --  throws Exception
   procedure setHighScore (This : in out DemoGameBehavior; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end setHighScore;

begin
   null;
   instance := DemoGameBehavior_Package.Create;

end org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;



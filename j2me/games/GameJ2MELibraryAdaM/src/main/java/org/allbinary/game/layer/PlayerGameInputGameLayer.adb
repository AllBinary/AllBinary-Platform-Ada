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


package body org.allbinary.game.layer.PlayerGameInputGameLayer_Package is

   procedure Initialize_Fields (This : in out PlayerGameInputGameLayer'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerGameInputGameLayer'Class; playerInputId : Integer) is
      canvasStrings : CanvasStrings_Access;
   begin
        AllBinaryGameLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0), StaticViewPosition_Package.Create (0, 0, 0));
        Initialize_Fields (This);
        This.playerGameInput := PlayerGameInput_Package.Create (This.getGameKeyEventList, BasicArrayListD_Package.Create, playerInputId);
        canvasStrings := CanvasStrings_Package.getInstance;
        This.logUtil.putF (To_Unbounded_String ("Danger Danger Danger: Should Not Be Called Except For Testing Input"), This'Unchecked_Access, canvasStrings.PAINT);
   end Initialize;

   function Create (playerInputId : Integer) return PlayerGameInputGameLayer_Access is
      This : constant PlayerGameInputGameLayer_Access := new PlayerGameInputGameLayer;
   begin
      PlayerGameInputGameLayer_Package.Initialize (This.all, playerInputId);
      return This;
   end Create;

   function getPlayerGameInput (This : in out PlayerGameInputGameLayer) return PlayerGameInput_Access is
   begin
        return This.playerGameInput;
   end getPlayerGameInput;

   procedure initInputProcessors (This : in out PlayerGameInputGameLayer) is
   begin
        null;
   end initInputProcessors;

   --  throws Exception
   procedure processInput (This : in out PlayerGameInputGameLayer; myManager : AllBinaryLayerManager_Access) is
   begin
        null;
   end processInput;

   procedure paint (This : in out PlayerGameInputGameLayer; graphics : Graphics_Access) is
   begin
        null;
   end paint;

end org.allbinary.game.layer.PlayerGameInputGameLayer_Package;



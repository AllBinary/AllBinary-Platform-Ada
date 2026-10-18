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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.view.StaticViewPosition_Package; use org.allbinary.view.StaticViewPosition_Package;

package body org.allbinary.game.layer.PlayerGameInputGameLayer_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StaticViewPosition_Package renames Standard.org.allbinary.view.StaticViewPosition_Package;
   procedure Initialize_Fields (This : in out PlayerGameInputGameLayer'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerGameInputGameLayer'Class; playerInputId : Integer) is
      canvasStrings : CanvasStrings_Access;
   begin
        AllBinaryGameLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0), StaticViewPosition_Package.Create (0, 0, 0));
        Initialize_Fields (This);
        This.playerGameInput := PlayerGameInput_Package.Create (PlayerGameInputGameLayer'Class (This).getGameKeyEventList, BasicArrayListD_Package.Create, playerInputId);
        canvasStrings := CanvasStrings_Package.getInstance;
        This.logUtil.putF (To_Unbounded_String ("Danger Danger Danger: Should Not Be Called Except For Testing Input"), PlayerGameInputGameLayer_Access'(This'Unchecked_Access), canvasStrings.PAINT);
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
   procedure processInput (This : in out PlayerGameInputGameLayer; myManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      myManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (myManager_Param);
   begin
        null;
   end processInput;

   procedure paint (This : in out PlayerGameInputGameLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

end org.allbinary.game.layer.PlayerGameInputGameLayer_Package;



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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;

package body org.allbinary.game.ag.ai.ScrollOverXImmediateYStopAI_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   procedure Initialize_Fields (This : in out ScrollOverXImmediateYStopAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollOverXImmediateYStopAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ScrollOverXImmediateYStopAI_Access is
      This : constant ScrollOverXImmediateYStopAI_Access := new ScrollOverXImmediateYStopAI;
   begin
      ScrollOverXImmediateYStopAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ScrollOverXImmediateYStopAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      ownerLayerInterface : AllBinaryLayer_Access;
      x : Integer;
      y : Integer;
      x2 : Integer;
      y2 : Integer;
      width : Integer;
      height : Integer;
      displayInfo : DisplayInfoSingleton_Access;
   begin
        ownerLayerInterface := ScrollOverXImmediateYStopAI'Class (This).getOwnerLayerInterface;
        x := ownerLayerInterface.getXP;
        y := ownerLayerInterface.getYP;
        x2 := ownerLayerInterface.getX2;
        y2 := ownerLayerInterface.getY2;
        width := ownerLayerInterface.getWidth;
        height := ownerLayerInterface.getHeight;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (x2) > (displayInfo.getLastWidth) then
            ownerLayerInterface.setPosition (0, y, ownerLayerInterface.getZP);
        end if;
        if (y2) > (displayInfo.getLastHeight) then
            ownerLayerInterface.setPosition (x, (displayInfo.getLastHeight) - (height), ownerLayerInterface.getZP);
        end if;
        if (x) < (0) then
            ownerLayerInterface.setPosition ((displayInfo.getLastWidth) - (width), y, ownerLayerInterface.getZP);
        end if;
        if (y) < (0) then
            ownerLayerInterface.setPosition (x, 0, ownerLayerInterface.getZP);
        end if;
   end processAI;

end org.allbinary.game.ag.ai.ScrollOverXImmediateYStopAI_Package;



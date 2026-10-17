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


package body org.allbinary.game.ag.ai.ScrollOverImmediateAI_Package is

   procedure Initialize_Fields (This : in out ScrollOverImmediateAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollOverImmediateAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
   end Initialize;

   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ScrollOverImmediateAI_Access is
      This : constant ScrollOverImmediateAI_Access := new ScrollOverImmediateAI;
   begin
      ScrollOverImmediateAI_Package.Initialize (This.all, ownerLayerInterface, gameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ScrollOverImmediateAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      ownerLayerInterface : AllBinaryLayer_Access;
      x : Integer;
      y : Integer;
      x2 : Integer;
      y2 : Integer;
      width : Integer;
      height : Integer;
      displayInfo : DisplayInfoSingleton_Access;
   begin
        ownerLayerInterface := This.getOwnerLayerInterface;
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
            ownerLayerInterface.setPosition (x, 0, ownerLayerInterface.getZP);
        end if;
        if (x) < (0) then
            ownerLayerInterface.setPosition ((displayInfo.getLastWidth) - (width), y, ownerLayerInterface.getZP);
        end if;
        if (y) < (0) then
            ownerLayerInterface.setPosition (x, (displayInfo.getLastHeight) - (height), ownerLayerInterface.getZP);
        end if;
   end processAI;

end org.allbinary.game.ag.ai.ScrollOverImmediateAI_Package;



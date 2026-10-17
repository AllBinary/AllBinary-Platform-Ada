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


package body org.allbinary.game.ag.ai.ScrollOverAllowOutsideAtEndAI_Package is

   procedure Initialize_Fields (This : in out ScrollOverAllowOutsideAtEndAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollOverAllowOutsideAtEndAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
   end Initialize;

   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ScrollOverAllowOutsideAtEndAI_Access is
      This : constant ScrollOverAllowOutsideAtEndAI_Access := new ScrollOverAllowOutsideAtEndAI;
   begin
      Initialize (This.all, ownerLayerInterface, gameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ScrollOverAllowOutsideAtEndAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      ownerLayerInterface : AllBinaryLayer_Access;
      x : Integer;
      y : Integer;
      width : Integer;
      height : Integer;
      displayInfo : DisplayInfoSingleton_Access;
   begin
        ownerLayerInterface := This.getOwnerLayerInterface;
        x := ownerLayerInterface.getXP;
        y := ownerLayerInterface.getYP;
        width := ownerLayerInterface.getWidth;
        height := ownerLayerInterface.getHeight;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (x) > (displayInfo.getLastWidth) then
            ownerLayerInterface.setPosition (-(width), y, ownerLayerInterface.getZP);
        end if;
        if (y) > (displayInfo.getLastHeight) then
            ownerLayerInterface.setPosition (x, -(height), ownerLayerInterface.getZP);
        end if;
        if (x) < (-(width)) then
            ownerLayerInterface.setPosition ((displayInfo.getLastWidth) + (width), y, ownerLayerInterface.getZP);
        end if;
        if (y) < (-(height)) then
            ownerLayerInterface.setPosition (x, (displayInfo.getLastHeight) + (height), ownerLayerInterface.getZP);
        end if;
   end processAI;

end org.allbinary.game.ag.ai.ScrollOverAllowOutsideAtEndAI_Package;



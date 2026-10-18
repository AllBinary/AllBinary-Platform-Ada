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


package body org.allbinary.game.ag.ai.ScrollOverAtHalfAI_Package is

   procedure Initialize_Fields (This : in out ScrollOverAtHalfAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollOverAtHalfAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ScrollOverAtHalfAI_Access is
      This : constant ScrollOverAtHalfAI_Access := new ScrollOverAtHalfAI;
   begin
      ScrollOverAtHalfAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ScrollOverAtHalfAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      ownerLayerInterface : AllBinaryLayer_Access;
      x : Integer;
      y : Integer;
      halfWidth : Integer;
      halfHeight : Integer;
      displayInfo : DisplayInfoSingleton_Access;
   begin
        ownerLayerInterface := ScrollOverAtHalfAI'Class (This).getOwnerLayerInterface;
        x := ownerLayerInterface.getXP;
        y := ownerLayerInterface.getYP;
        halfWidth := ownerLayerInterface.getHalfWidth;
        halfHeight := ownerLayerInterface.getHalfHeight;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (x) > ((displayInfo.getLastWidth) - (halfWidth)) then
            ownerLayerInterface.setPosition ((halfWidth) + (1), y, ownerLayerInterface.getZP);
        end if;
        if (y) > ((displayInfo.getLastHeight) - (halfHeight)) then
            ownerLayerInterface.setPosition (x, (halfHeight) + (1), ownerLayerInterface.getZP);
        end if;
        if (x) < (-(halfWidth)) then
            ownerLayerInterface.setPosition ((displayInfo.getLastWidth) - (halfWidth), y, ownerLayerInterface.getZP);
        end if;
        if (y) < (-(halfHeight)) then
            ownerLayerInterface.setPosition (x, (displayInfo.getLastHeight) - (halfHeight), ownerLayerInterface.getZP);
        end if;
   end processAI;

end org.allbinary.game.ag.ai.ScrollOverAtHalfAI_Package;



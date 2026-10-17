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


package body org.allbinary.game.ag.ai.ScrollOverAtEndAI_Package is

   procedure Initialize_Fields (This : in out ScrollOverAtEndAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollOverAtEndAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ScrollOverAtEndAI_Access is
      This : constant ScrollOverAtEndAI_Access := new ScrollOverAtEndAI;
   begin
      ScrollOverAtEndAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ScrollOverAtEndAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
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
            ownerLayerInterface.setPosition (0, y, ownerLayerInterface.getZP);
        end if;
        if (y) > (displayInfo.getLastHeight) then
            ownerLayerInterface.setPosition (x, 0, ownerLayerInterface.getZP);
        end if;
        if (x) < (-(width)) then
            ownerLayerInterface.setPosition ((displayInfo.getLastWidth) - (width), y, ownerLayerInterface.getZP);
        end if;
        if (y) < (-(height)) then
            ownerLayerInterface.setPosition (x, (displayInfo.getLastHeight) - (height), ownerLayerInterface.getZP);
        end if;
   end processAI;

end org.allbinary.game.ag.ai.ScrollOverAtEndAI_Package;



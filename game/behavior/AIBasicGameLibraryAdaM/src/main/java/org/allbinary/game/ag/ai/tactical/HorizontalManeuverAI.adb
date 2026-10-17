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


package body org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package is

   procedure Initialize_Fields (This : in out HorizontalManeuverAI'Class) is
   begin
      null;
      This.currentRelativeAngle := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HorizontalManeuverAI'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) is
      ownerLayerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.currentSpeed := 5;
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) return HorizontalManeuverAI_Access is
      This : constant HorizontalManeuverAI_Access := new HorizontalManeuverAI;
   begin
      HorizontalManeuverAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out HorizontalManeuverAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      ownerLayerInterface : AllBinaryLayer_Access;
      x : Integer;
   begin
        ownerLayerInterface := This.getOwnerLayerInterface;
        x := ownerLayerInterface.getXP;
        if ((ownerLayerInterface.getXP) - (This.currentSpeed)) <= (0) then
            This.reverse_Id;
            This.drop;
        end if;
        if ((ownerLayerInterface.getX2) + (This.currentSpeed)) > (DisplayInfoSingleton_Package.getInstance.getLastWidth) then
            This.reverse_Id;
            This.accelerate;
            This.drop;
        end if;
        if (This.currentRelativeAngle) = (0) then
            x := (x) + (This.currentSpeed);
        elsif (This.currentRelativeAngle) = (180) then
            x := (x) - (This.currentSpeed);
        end if;
        ownerLayerInterface.setPosition (x, ownerLayerInterface.getYP, ownerLayerInterface.getZP);
        if (This.currentRelativeAngle) = (0) then
            BasicAI (This).processKeyAI (Canvas_Package.KEY_NUM0);
        elsif (This.currentRelativeAngle) = (180) then
            BasicAI (This).processKeyAI (Canvas_Package.KEY_POUND);
        end if;
   end processAI;

   procedure reverse_Id (This : in out HorizontalManeuverAI) is
   begin
        if (This.currentRelativeAngle) = (180) then
            This.currentRelativeAngle := 0;
        elsif (This.currentRelativeAngle) = (0) then
            This.currentRelativeAngle := 180;
        end if;
   end reverse_Id;

   procedure accelerate (This : in out HorizontalManeuverAI) is
   begin
        if (This.currentSpeed) < (20) then
            This.currentSpeed := This.currentSpeed + 1;
        end if;
   end accelerate;

   procedure drop (This : in out HorizontalManeuverAI) is
      ownerLayerInterface : AllBinaryLayer_Access;
      y : Integer;
   begin
        ownerLayerInterface := This.getOwnerLayerInterface;
        y := ownerLayerInterface.getYP;
        if ((ownerLayerInterface.getY2) + (ownerLayerInterface.getHeight)) > (DisplayInfoSingleton_Package.getInstance.getLastHeight) then
            y := 0;
        else
            y := (y) + ((ownerLayerInterface.getHeight) + (1));
        end if;
        ownerLayerInterface.setPosition (ownerLayerInterface.getXP, y, ownerLayerInterface.getZP);
   end drop;

end org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package;



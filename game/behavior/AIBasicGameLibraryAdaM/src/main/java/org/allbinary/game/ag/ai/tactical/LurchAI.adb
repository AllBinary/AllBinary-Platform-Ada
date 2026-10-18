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


package body org.allbinary.game.ag.ai.tactical.LurchAI_Package is

   procedure Initialize_Fields (This : in out LurchAI'Class) is
   begin
      null;
      This.currentRelativeAngle := 0;
      This.currentSpeed := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out LurchAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return LurchAI_Access is
      This : constant LurchAI_Access := new LurchAI;
   begin
      LurchAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out LurchAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      ownerLayerInterface : AllBinaryLayer_Access;
      x : Integer;
   begin
        if (This.currentSpeed) = (-(1)) then
            This.currentSpeed := 5;
        else
            This.currentSpeed := -(1);
        end if;
        ownerLayerInterface := LurchAI'Class (This).getOwnerLayerInterface;
        x := ownerLayerInterface.getXP;
        if ((ownerLayerInterface.getXP) - (This.currentSpeed)) <= (0) then
            LurchAI'Class (This).reverse_Id;
            LurchAI'Class (This).drop;
        end if;
        if ((ownerLayerInterface.getX2) + (This.currentSpeed)) > (DisplayInfoSingleton_Package.getInstance.getLastWidth) then
            LurchAI'Class (This).reverse_Id;
            LurchAI'Class (This).accelerate;
            LurchAI'Class (This).drop;
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

   procedure reverse_Id (This : in out LurchAI) is
   begin
        if (This.currentRelativeAngle) = (180) then
            This.currentRelativeAngle := 0;
        elsif (This.currentRelativeAngle) = (0) then
            This.currentRelativeAngle := 180;
        end if;
   end reverse_Id;

   procedure accelerate (This : in out LurchAI) is
   begin
        if (This.currentSpeed) < (20) then
            This.currentSpeed := This.currentSpeed + 1;
        end if;
   end accelerate;

   procedure drop (This : in out LurchAI) is
      ownerLayerInterface : AllBinaryLayer_Access;
      y : Integer;
   begin
        ownerLayerInterface := LurchAI'Class (This).getOwnerLayerInterface;
        y := ownerLayerInterface.getYP;
        if ((ownerLayerInterface.getY2) + (ownerLayerInterface.getHeight)) > (DisplayInfoSingleton_Package.getInstance.getLastHeight) then
            y := 0;
        else
            y := (y) + ((ownerLayerInterface.getHeight) + (1));
        end if;
        ownerLayerInterface.setPosition (ownerLayerInterface.getXP, y, ownerLayerInterface.getZP);
   end drop;

end org.allbinary.game.ag.ai.tactical.LurchAI_Package;



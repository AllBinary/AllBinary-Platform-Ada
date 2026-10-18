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


package body org.allbinary.game.ag.ai.scroller.TimedFireAI_Package is

   procedure Initialize_Fields (This : in out TimedFireAI'Class) is
   begin
      null;
      This.maxFireDelayTimeHelper := TimeDelayHelper_Package.Create (0);
      
   end Initialize_Fields;


   procedure Initialize (This : in out TimedFireAI'Class; delay_Id : Integer; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.delay_Id := delay_Id;
   end Initialize;

   function Create (delay_Id : Integer; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return TimedFireAI_Access is
      This : constant TimedFireAI_Access := new TimedFireAI;
   begin
      TimedFireAI_Package.Initialize (This.all, delay_Id, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out TimedFireAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      timeFiredInterface : TimeFiredInterface_Access;
   begin
        timeFiredInterface := TimeFiredInterface_Access (TimedFireAI'Class (This).getOwnerLayerInterface);
        if (This.maxFireDelayTimeHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime)) and then (((timeFiredInterface.getLastFireTime) + (This.maxFireDelayTimeHelper.delay_Id)) < (This.maxFireDelayTimeHelper.getStartTime)) then
            BasicAI (This).processKeyAI (Canvas_Package.KEY_NUM1);
            This.maxFireDelayTimeHelper.delay_Id := This.delay_Id;
        end if;
   end processAI;

begin
   null;
   TIME := SmallIntegerSingletonFactory_Package.getInstance.getAt (1);

end org.allbinary.game.ag.ai.scroller.TimedFireAI_Package;



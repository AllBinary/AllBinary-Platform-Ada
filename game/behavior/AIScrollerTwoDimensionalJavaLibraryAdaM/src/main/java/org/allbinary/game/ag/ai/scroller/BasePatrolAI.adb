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


package body org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package is

   procedure Initialize_Fields (This : in out BasePatrolAI'Class) is
   begin
      null;
      
      
      This.xTotalDistance := 0;
      This.lastKeyDirection := Canvas_Package.RIGHT;
      This.keyDirection := Canvas_Package.RIGHT;
   end Initialize_Fields;


   procedure Initialize (This : in out BasePatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.maxDistance := Integer (hashtable.get (BasePatrolAI_Package.MAX_DISTANCE));
        This.currentDistance := Integer (This.maxDistance);
   end Initialize;

   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return BasePatrolAI_Access is
      This : constant BasePatrolAI_Access := new BasePatrolAI;
   begin
      BasePatrolAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   procedure update (This : in out BasePatrolAI) is
   begin
        BasePatrolAI'Class (This).updateTotalDistance;
        BasePatrolAI'Class (This).changeDirectionIfReachedPacingAreaMax;
   end update;

   procedure updateTotalDistance (This : in out BasePatrolAI) is
      velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface_Access;
      velocityProperties : BasicVelocityProperties_Access;
   begin
        velocityInterfaceCompositeInterface := VelocityInterfaceCompositeInterface_Access (BasePatrolAI'Class (This).getOwnerLayerInterface);
        velocityProperties := velocityInterfaceCompositeInterface.getVelocityProperties;
        This.xTotalDistance := (This.xTotalDistance) + (velocityProperties.getVelocityXBasicDecimalP.getScaled);
   end updateTotalDistance;

   procedure changeDirectionIfReachedPacingAreaMax (This : in out BasePatrolAI) is
      mathUtil : MathUtil_Access;
      totalDistance : Integer;
   begin
        mathUtil := MathUtil_Package.getInstance;
        totalDistance := mathUtil.abs_Id (This.xTotalDistance);
        if (totalDistance) > (This.currentDistance) then
            BasePatrolAI'Class (This).nextDirection;
        end if;
   end changeDirectionIfReachedPacingAreaMax;

   procedure nextDirection (This : in out BasePatrolAI) is
   begin
        if (This.lastKeyDirection) = (Canvas_Package.LEFT) then
            This.keyDirection := Canvas_Package.RIGHT;
            This.lastKeyDirection := This.keyDirection;
            This.xTotalDistance := 0;
        elsif (This.lastKeyDirection) = (Canvas_Package.RIGHT) then
            This.keyDirection := Canvas_Package.LEFT;
            This.lastKeyDirection := This.keyDirection;
            This.xTotalDistance := 0;
        end if;
   end nextDirection;

   procedure disable (This : in out BasePatrolAI) is
   begin
        null;
   end disable;

begin
   null;
   MAX_DISTANCE := SmallIntegerSingletonFactory_Package.getInstance.getAt (2);
   DIRECTION_ARRAY := SmallIntegerSingletonFactory_Package.getInstance.getAt (3);
   FIRING_DISTANCE := SmallIntegerSingletonFactory_Package.getInstance.getAt (4);
   SPEED := SmallIntegerSingletonFactory_Package.getInstance.getAt (5);

end org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package;



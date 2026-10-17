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


package body org.allbinary.game.ag.ai.scroller.FlockingAI_Package is

   procedure Initialize_Fields (This : in out FlockingAI'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FlockingAI'Class; hashtable_Param : access ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) is
      hashtable : ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : GameInput_Access := GameInput_Access (gameInput_Param);
      allowedDistance : Integer;
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        allowedDistance := Integer (hashtable.get (BasePatrolAI_Package.MAX_DISTANCE));
        This.allowedDistance := allowedDistance.intValue;
   end Initialize;

   function Create (hashtable_Param : access ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) return FlockingAI_Access is
      This : constant FlockingAI_Access := new FlockingAI;
   begin
      FlockingAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out FlockingAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      maxDistance : Integer;
      farAllbinaryLayer : AllBinaryLayer_Access;
      groupLayerManagerListener : GroupLayerManagerListener_Access;
      list : BasicArrayList_Access;
      size : Integer;
      allBinaryLayer : AllBinaryLayer_Access;
      ownerLayerInterface : AllBinaryLayer_Access;
      distance : Integer;
      index : Integer;
   begin
        maxDistance := 0;
        farAllbinaryLayer := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
        groupLayerManagerListener := GroupLayerManagerListener_Package.getInstance;
        list := groupLayerManagerListener.getList (BasicGroupFactory_Package.getInstance.ENEMY);
        size := list.size;
        allBinaryLayer := null;
        ownerLayerInterface := null;
        for index in 0 .. (size) - 1 loop
            allBinaryLayer := AllBinaryLayer_Access (list.get (index));
            if (allBinaryLayer.getType) /= (WeaponLayer_Package.getStaticType) then
                distance := This.getXYDistance (allBinaryLayer);
                if (distance) > (maxDistance) then
                    maxDistance := distance;
                    farAllbinaryLayer := allBinaryLayer;
                    if (distance) > (This.allowedDistance) then
                        exit;
                    end if;
                end if;
            end if;
        end loop;
        if (maxDistance) > (This.allowedDistance) then
            if (farAllbinaryLayer) /= (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER) then
                ownerLayerInterface := This.getOwnerLayerInterface;
                if (farAllbinaryLayer.getXP) < (ownerLayerInterface.getXP) then
                    This.processKeyAI (Canvas_Package.LEFT);
                elsif (farAllbinaryLayer.getXP) > (ownerLayerInterface.getXP) then
                    This.processKeyAI (Canvas_Package.RIGHT);
                elsif (farAllbinaryLayer.getYP) > (ownerLayerInterface.getYP) then
                    This.processKeyAI (Canvas_Package.UP);
                elsif (farAllbinaryLayer.getYP) < (ownerLayerInterface.getYP) then
                    This.processKeyAI (Canvas_Package.DOWN);
                end if;
            end if;
        end if;
   end processAI;

   function getXYDistance (This : in out FlockingAI; allBinaryLayer_Param : access AllBinaryLayer'Class) return Integer is
      allBinaryLayer : AllBinaryLayer_Access := AllBinaryLayer_Access (allBinaryLayer_Param);
      ownerLayerInterface : AllBinaryLayer_Access;
      xTotalDistance : Integer;
      yTotalDistance : Integer;
      mathUtil : MathUtil_Access;
      totalDistance : Integer;
   begin
        ownerLayerInterface := This.getOwnerLayerInterface;
        xTotalDistance := (((allBinaryLayer.getXP) + (allBinaryLayer.getHalfWidth))) - (((ownerLayerInterface.getXP) + (ownerLayerInterface.getHalfWidth)));
        yTotalDistance := (((allBinaryLayer.getYP) + (allBinaryLayer.getHalfHeight))) - (((ownerLayerInterface.getYP) + (ownerLayerInterface.getHalfHeight)));
        mathUtil := MathUtil_Package.getInstance;
        totalDistance := (mathUtil.abs_Id (xTotalDistance)) + (mathUtil.abs_Id (yTotalDistance));
        return totalDistance;
   end getXYDistance;

   procedure getXYDistance (This : in out FlockingAI; allBinaryLayer_Param : access AllBinaryLayer'Class) is
      Java_Result : constant Integer := FlockingAI'Class (This).getXYDistance (allBinaryLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getXYDistance;

end org.allbinary.game.ag.ai.scroller.FlockingAI_Package;



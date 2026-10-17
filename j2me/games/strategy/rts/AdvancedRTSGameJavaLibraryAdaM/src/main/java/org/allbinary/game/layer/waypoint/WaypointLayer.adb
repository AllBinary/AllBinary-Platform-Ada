-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.waypoint.WaypointLayer_Package is

   procedure Initialize_Fields (This : in out WaypointLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WaypointLayer'Class; remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) is
   begin
        AdvancedRTSGameLayer_Package.Initialize (This, remoteInfo, parentLayer, AdvancedRTSProperties_Package.createProperties, groupInterface, rootName, name, Health_Package.Create (1000), NullRTSFormInputFactory_Package.getInstance, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TileLayerPositionIntoViewPosition_Package.Create);
        This.setCollidableInferface (CollidableWaypointBehavior_Package.Create (True));
        This.getWaypointBehavior.setWaypoint (Waypoint_Package.Create (This'Unchecked_Access, AttackSound_Package.getInstance));
        This.setAnimationInterface (This.indexedButShouldBeRotationAnimationInterface);
   end Initialize;

   function Create (remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) return WaypointLayer_Access is
      This : constant WaypointLayer_Access := new WaypointLayer;
   begin
      WaypointLayer_Package.Initialize (This.all, remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y);
      return This;
   end Create;

   procedure construct (This : in out WaypointLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access) is
   begin
        This.percentCompleteP := 100;
        This.initVisibility (rtsPlayerLayerInterface);
   end construct;

   procedure paint (This : in out WaypointLayer; graphics : Graphics_Access) is
   begin
        if This.isVisible then
            AdvancedRTSGameLayer (This).paint (graphics);
        end if;
   end paint;

   procedure processTick (This : in out WaypointLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        begin
            This.indexedButShouldBeRotationAnimationInterface.nextFrame;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("processTick"), e);
                end;
        end;
   end processTick;

   procedure damage (This : in out WaypointLayer; damage : Integer; damageType : Integer) is
   begin
        null;
   end damage;

   --  throws Exception
   function getDamage (This : in out WaypointLayer; damageType : Integer) return Integer is
   begin
        return 0;
   end getDamage;

   --  throws Exception
   procedure setDestroyed (This : in out WaypointLayer; destroyed : Boolean) is
   begin
        AdvancedRTSGameLayer (This).setDestroyed (destroyed);
        if This.isDestroyed then
            WaypointCellPositionHistory_Package.getInstance.removeLayer (This'Unchecked_Access);
        end if;
   end setDestroyed;

   function getType (This : in out WaypointLayer) return Integer is
   begin
        return WaypointLayer_Package.getStaticType;
   end getType;

   function getStaticType return Integer is
   begin
        return 4;
   end getStaticType;

   function isSelfUpgradeable (This : in out WaypointLayer) return Boolean is
   begin
        return False;
   end isSelfUpgradeable;

   procedure getDamage (This : in out WaypointLayer; damageType : Integer) is
      Java_Result : constant Integer := WaypointLayer'Class (This).getDamage (damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

end org.allbinary.game.layer.waypoint.WaypointLayer_Package;



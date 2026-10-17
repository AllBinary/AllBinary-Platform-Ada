-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify


package body org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package is

   procedure Initialize_Fields (This : in out VisualWaypointLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out VisualWaypointLayer'Class; remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) is
   begin
        WaypointLayer_Package.Initialize (This, remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y);
   end Initialize;

   function Create (remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) return VisualWaypointLayer_Access is
      This : constant VisualWaypointLayer_Access := new VisualWaypointLayer;
   begin
      Initialize (This.all, remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y);
      return This;
   end Create;

   function createHudPaintable (This : in out VisualWaypointLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : WaypointInfoHudPaintable_Access;
   begin
        rtsLayerHudPaintable := WaypointInfoHudPaintableSingleton_Package.getInstance;
        rtsLayerHudPaintable.setBasicColorP (This.allBinaryGameLayerManagerP.getForegroundBasicColor);
        rtsLayerHudPaintable.setRtsLayer (This'Unchecked_Access);
        return rtsLayerHudPaintable;
   end createHudPaintable;

   function getHudPaintable (This : in out VisualWaypointLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : WaypointInfoHudPaintable_Access;
   begin
        rtsLayerHudPaintable := WaypointInfoHudPaintableSingleton_Package.getInstance;
        return rtsLayerHudPaintable;
   end getHudPaintable;

   procedure createHudPaintable (This : in out VisualWaypointLayer) is
      Java_Result : constant SelectionHudPaintable_Access := VisualWaypointLayer'Class (This).createHudPaintable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHudPaintable;

   procedure getHudPaintable (This : in out VisualWaypointLayer) is
      Java_Result : constant SelectionHudPaintable_Access := VisualWaypointLayer'Class (This).getHudPaintable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHudPaintable;

end org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package;



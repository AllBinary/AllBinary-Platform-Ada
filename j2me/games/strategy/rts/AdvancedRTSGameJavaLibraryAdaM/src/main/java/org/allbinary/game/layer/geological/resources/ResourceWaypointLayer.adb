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


package body org.allbinary.game.layer.geological.resources.ResourceWaypointLayer_Package is

   procedure Initialize_Fields (This : in out ResourceWaypointLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ResourceWaypointLayer'Class; remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) is
   begin
        WaypointLayer_Package.Initialize (This, remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y);
   end Initialize;

   function Create (remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) return ResourceWaypointLayer_Access is
      This : constant ResourceWaypointLayer_Access := new ResourceWaypointLayer;
   begin
      ResourceWaypointLayer_Package.Initialize (This.all, remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y);
      return This;
   end Create;

   function createHudPaintable (This : in out ResourceWaypointLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : GeologicalResourceInfoHudPaintable_Access;
   begin
        rtsLayerHudPaintable := GeologicalResourceInfoHudPaintableSingleton_Package.getInstance;
        rtsLayerHudPaintable.setBasicColorP (This.allBinaryGameLayerManagerP.getForegroundBasicColor);
        rtsLayerHudPaintable.setRtsLayer (This'Unchecked_Access);
        return rtsLayerHudPaintable;
   end createHudPaintable;

   function getHudPaintable (This : in out ResourceWaypointLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : GeologicalResourceInfoHudPaintable_Access;
   begin
        rtsLayerHudPaintable := GeologicalResourceInfoHudPaintableSingleton_Package.getInstance;
        return rtsLayerHudPaintable;
   end getHudPaintable;

end org.allbinary.game.layer.geological.resources.ResourceWaypointLayer_Package;



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


with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package; use org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package; use org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package;

package body org.allbinary.game.layer.geological.resources.ResourceWaypointLayer_Package is

   procedure Initialize_Fields (This : in out ResourceWaypointLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ResourceWaypointLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      parentLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (parentLayer_Param);
      animationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (animationInterfaceFactoryInterface_Param);
      proceduralAnimationInterfaceFactoryInterface : constant ProceduralAnimationInterfaceFactoryInterface_Access := ProceduralAnimationInterfaceFactoryInterface_Access (proceduralAnimationInterfaceFactoryInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        WaypointLayer_Package.Initialize (This, remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y);
   end Initialize;

   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) return ResourceWaypointLayer_Access is
      This : constant ResourceWaypointLayer_Access := new ResourceWaypointLayer;
   begin
      ResourceWaypointLayer_Package.Initialize (This.all, remoteInfo_Param, parentLayer_Param, groupInterface, rootName, name, animationInterfaceFactoryInterface_Param, proceduralAnimationInterfaceFactoryInterface_Param, rectangle_Param, x, y);
      return This;
   end Create;

   function createHudPaintable (This : in out ResourceWaypointLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : GeologicalResourceInfoHudPaintable_Access;
   begin
        rtsLayerHudPaintable := GeologicalResourceInfoHudPaintableSingleton_Package.getInstance;
        rtsLayerHudPaintable.setBasicColorP (This.allBinaryGameLayerManagerP.getForegroundBasicColor);
        rtsLayerHudPaintable.setRtsLayer (ResourceWaypointLayer_Access'(This'Unchecked_Access));
        return SelectionHudPaintable_Access (rtsLayerHudPaintable);
   end createHudPaintable;

   function getHudPaintable (This : in out ResourceWaypointLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : GeologicalResourceInfoHudPaintable_Access;
   begin
        rtsLayerHudPaintable := GeologicalResourceInfoHudPaintableSingleton_Package.getInstance;
        return SelectionHudPaintable_Access (rtsLayerHudPaintable);
   end getHudPaintable;

end org.allbinary.game.layer.geological.resources.ResourceWaypointLayer_Package;



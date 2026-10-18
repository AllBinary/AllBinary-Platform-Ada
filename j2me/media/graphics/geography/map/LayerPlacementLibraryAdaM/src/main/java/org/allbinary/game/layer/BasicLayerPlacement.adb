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



package body org.allbinary.game.layer.BasicLayerPlacement_Package is

   procedure Initialize_Fields (This : in out BasicLayerPlacement'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicLayerPlacement'Class; layerType_Param : access LayerPlacementType_Package.LayerPlacementType'Class; width : Integer; height : Integer) is
      layerType : constant LayerPlacementType_Access := LayerPlacementType_Access (layerType_Param);
   begin
      Initialize_Fields (This);
        This.layerType := layerType;
        This.width := width;
        This.height := height;
   end Initialize;

   function Create (layerType_Param : access LayerPlacementType_Package.LayerPlacementType'Class; width : Integer; height : Integer) return BasicLayerPlacement_Access is
      This : constant BasicLayerPlacement_Access := new BasicLayerPlacement;
   begin
      BasicLayerPlacement_Package.Initialize (This.all, layerType_Param, width, height);
      return This;
   end Create;

   function getWidth (This : in out BasicLayerPlacement) return Integer is
   begin
        return This.width;
   end getWidth;

   function getHeight (This : in out BasicLayerPlacement) return Integer is
   begin
        return This.height;
   end getHeight;

   function getLayerType (This : in out BasicLayerPlacement) return LayerPlacementType_Access is
   begin
        return This.layerType;
   end getLayerType;

   procedure setLayerType (This : in out BasicLayerPlacement; layerType_Param : access LayerPlacementType_Package.LayerPlacementType'Class) is
      layerType : constant LayerPlacementType_Access := LayerPlacementType_Access (layerType_Param);
   begin
        This.layerType := layerType;
   end setLayerType;

end org.allbinary.game.layer.BasicLayerPlacement_Package;



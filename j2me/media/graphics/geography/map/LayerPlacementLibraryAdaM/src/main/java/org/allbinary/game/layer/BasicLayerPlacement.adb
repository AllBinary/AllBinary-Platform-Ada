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


   procedure Initialize (This : in out BasicLayerPlacement'Class; layerType : LayerPlacementType_Access; width : Integer; height : Integer) is
   begin
      Initialize_Fields (This);
        This.layerType := layerType;
        This.width := width;
        This.height := height;
   end Initialize;

   function Create (layerType : LayerPlacementType_Access; width : Integer; height : Integer) return BasicLayerPlacement_Access is
      This : constant BasicLayerPlacement_Access := new BasicLayerPlacement;
   begin
      Initialize (This.all, layerType, width, height);
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

   procedure setLayerType (This : in out BasicLayerPlacement; layerType : LayerPlacementType_Access) is
   begin
        This.layerType := layerType;
   end setLayerType;

   procedure getWidth (This : in out BasicLayerPlacement) is
      Java_Result : constant Integer := BasicLayerPlacement'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out BasicLayerPlacement) is
      Java_Result : constant Integer := BasicLayerPlacement'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

   procedure getLayerType (This : in out BasicLayerPlacement) is
      Java_Result : constant LayerPlacementType_Access := BasicLayerPlacement'Class (This).getLayerType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerType;

end org.allbinary.game.layer.BasicLayerPlacement_Package;



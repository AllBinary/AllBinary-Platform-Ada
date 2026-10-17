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


package body org.allbinary.layer.relationship.RelativeLayerRelationship_Package is

   procedure Initialize_Fields (This : in out RelativeLayerRelationship'Class) is
   begin
      null;
      This.layer := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
   end Initialize_Fields;


   procedure Initialize (This : in out RelativeLayerRelationship'Class; layer_Param : access AllBinaryLayer'Class; point_Param : access GPoint'Class; typesAllowedList_Param : access BasicArrayList'Class) is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      point : GPoint_Access := GPoint_Access (point_Param);
      typesAllowedList : BasicArrayList_Access := BasicArrayList_Access (typesAllowedList_Param);
   begin
        RelativeRelationship_Package.Initialize (This, point, typesAllowedList);
        Initialize_Fields (This);
        This.layer := layer;
   end Initialize;

   function Create (layer_Param : access AllBinaryLayer'Class; point_Param : access GPoint'Class; typesAllowedList_Param : access BasicArrayList'Class) return RelativeLayerRelationship_Access is
      This : constant RelativeLayerRelationship_Access := new RelativeLayerRelationship;
   begin
      RelativeLayerRelationship_Package.Initialize (This.all, layer_Param, point_Param, typesAllowedList_Param);
      return This;
   end Create;

   function getX (This : in out RelativeLayerRelationship) return Integer is
   begin
        return (This.layer.getXP) + (RelativeRelationship (This).getX);
   end getX;

   function getY (This : in out RelativeLayerRelationship) return Integer is
   begin
        return (This.layer.getYP) + (RelativeRelationship (This).getY);
   end getY;

   function getZ (This : in out RelativeLayerRelationship) return Integer is
   begin
        return (This.layer.getZP) + (RelativeRelationship (This).getZ);
   end getZ;

end org.allbinary.layer.relationship.RelativeLayerRelationship_Package;



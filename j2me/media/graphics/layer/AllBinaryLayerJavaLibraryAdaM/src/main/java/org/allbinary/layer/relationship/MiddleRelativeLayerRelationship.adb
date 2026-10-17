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


package body org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package is

   procedure Initialize_Fields (This : in out MiddleRelativeLayerRelationship'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MiddleRelativeLayerRelationship'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        RelativeLayerRelationship_Package.Initialize (This, layer, PointFactory_Package.getInstance.createXY (layer.getHalfWidth, layer.getHalfHeight), BasicArrayListUtil_Package.getInstance.getImmutableInstance);
   end Initialize;

   function Create (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return MiddleRelativeLayerRelationship_Access is
      This : constant MiddleRelativeLayerRelationship_Access := new MiddleRelativeLayerRelationship;
   begin
      MiddleRelativeLayerRelationship_Package.Initialize (This.all, layer_Param);
      return This;
   end Create;

end org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package;



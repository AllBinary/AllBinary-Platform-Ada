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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.layer.relationship.RelativeLayerRelationship_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
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



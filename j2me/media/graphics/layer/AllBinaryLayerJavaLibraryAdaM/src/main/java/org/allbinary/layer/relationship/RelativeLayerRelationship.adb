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


with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.layer.relationship.RelativeLayerRelationship_Package is

   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out RelativeLayerRelationship'Class) is
   begin
      null;
      This.layer := AllBinaryLayer_Access (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER);
   end Initialize_Fields;


   procedure Initialize (This : in out RelativeLayerRelationship'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class; typesAllowedList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      typesAllowedList : constant BasicArrayList_Access := BasicArrayList_Access (typesAllowedList_Param);
   begin
        RelativeRelationship_Package.Initialize (This, point, typesAllowedList);
        Initialize_Fields (This);
        This.layer := layer;
   end Initialize;

   function Create (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class; typesAllowedList_Param : access BasicArrayList_Package.BasicArrayList'Class) return RelativeLayerRelationship_Access is
      This : constant RelativeLayerRelationship_Access := new RelativeLayerRelationship;
   begin
      RelativeLayerRelationship_Package.Initialize (This.all, layer_Param, point_Param, typesAllowedList_Param);
      return This;
   end Create;

   function getX (This : in out RelativeLayerRelationship) return Integer is
   begin
        return (This.layer.getXP) + (RelativeRelationship_Package.RelativeRelationship (This).getX);
   end getX;

   function getY (This : in out RelativeLayerRelationship) return Integer is
   begin
        return (This.layer.getYP) + (RelativeRelationship_Package.RelativeRelationship (This).getY);
   end getY;

   function getZ (This : in out RelativeLayerRelationship) return Integer is
   begin
        return (This.layer.getZP) + (RelativeRelationship_Package.RelativeRelationship (This).getZ);
   end getZ;

end org.allbinary.layer.relationship.RelativeLayerRelationship_Package;



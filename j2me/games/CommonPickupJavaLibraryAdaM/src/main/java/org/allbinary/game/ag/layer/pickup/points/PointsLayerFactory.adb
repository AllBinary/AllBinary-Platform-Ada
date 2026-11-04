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


with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package; use org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package;

package body org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package is

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
   procedure Initialize_Fields (This : in out PointsLayerFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PointsLayerFactory'Class; points : Integer) is
   begin
      Initialize_Fields (This);
        This.points := points;
   end Initialize;

   function Create (points : Integer) return PointsLayerFactory_Access is
      This : constant PointsLayerFactory_Access := new PointsLayerFactory;
   begin
      PointsLayerFactory_Package.Initialize (This.all, points);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out PointsLayerFactory) return AllBinaryLayer_Access is
   begin
        return AllBinaryLayer_Access (PointsLayer_Package.Create (This.points));
   end getInstance;

end org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package;



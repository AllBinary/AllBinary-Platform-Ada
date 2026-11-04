-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;

package body org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package is

   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   procedure Initialize_Fields (This : in out WaypointRunnableLogHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointRunnableLogHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointRunnableLogHelper_Access is
      This : constant WaypointRunnableLogHelper_Access := new WaypointRunnableLogHelper;
   begin
      WaypointRunnableLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WaypointRunnableLogHelper_Access is
   begin
        return WaypointRunnableLogHelper_Access (WaypointRunnableLogHelper_Package.instance);
   end getInstance;

   procedure start (This : in out WaypointRunnableLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end start;

   procedure end_Id (This : in out WaypointRunnableLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        null;
   end end_Id;

begin
   null;
   instance := WaypointRunnableLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;



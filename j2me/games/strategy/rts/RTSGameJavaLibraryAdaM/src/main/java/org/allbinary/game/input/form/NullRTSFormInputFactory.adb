-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.input.BuildMenuCompositeInterface_Package;
with org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
with org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.input.form.NullRTSFormInputFactory_Package is

   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   subtype RTSFormInput_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access;
   function "=" (Left, Right : RTSFormInput_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array;
   function "=" (Left, Right : RTSFormInput_Access_Array) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   procedure Initialize_Fields (This : in out NullRTSFormInputFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullRTSFormInputFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullRTSFormInputFactory_Access is
      This : constant NullRTSFormInputFactory_Access := new NullRTSFormInputFactory;
   begin
      NullRTSFormInputFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSFormInput_Access is
   begin
        return RTSFormInput_Access (NullRTSFormInputFactory_Package.SINGLETON);
   end getInstance;

begin
   null;
   SINGLETON := RTSFormInput_Package.Create (BasicGroupFactory_Package.getInstance.NONE_ARRAY);

end org.allbinary.game.input.form.NullRTSFormInputFactory_Package;



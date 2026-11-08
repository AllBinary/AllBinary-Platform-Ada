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


with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;

package body org.allbinary.game.layer.unit.UnitGameInputProcessor_Package is

   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   function "=" (Left, Right : UnitLayer_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   procedure Initialize_Fields (This : in out UnitGameInputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UnitGameInputProcessor'Class; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class) is
      unitLayer : constant UnitLayer_Access := UnitLayer_Access (unitLayer_Param);
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.unitLayer := unitLayer;
   end Initialize;

   function Create (unitLayer_Param : access UnitLayer_Package.UnitLayer'Class) return UnitGameInputProcessor_Access is
      This : constant UnitGameInputProcessor_Access := new UnitGameInputProcessor;
   begin
      UnitGameInputProcessor_Package.Initialize (This.all, unitLayer_Param);
      return This;
   end Create;

end org.allbinary.game.layer.unit.UnitGameInputProcessor_Package;



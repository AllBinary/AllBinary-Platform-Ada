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


with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package; use org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package;

package body org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package is

   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype WaypointEventHandler_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access;
   function "=" (Left, Right : WaypointEventHandler_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   subtype WaypointEventHandler_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array;
   function "=" (Left, Right : WaypointEventHandler_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   subtype WaypointEventHandler_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access;
   function "=" (Left, Right : WaypointEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   subtype WaypointEventHandler_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   subtype WaypointEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   procedure Initialize_Fields (This : in out WaypointEventHandlerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointEventHandlerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointEventHandlerFactory_Access is
      This : constant WaypointEventHandlerFactory_Access := new WaypointEventHandlerFactory;
   begin
      WaypointEventHandlerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (groupInterface_Param : access Group_Package.Group'Class) return WaypointEventHandler_Access is
      groupInterface : constant Group_Access := Group_Access (groupInterface_Param);
      groupId : Integer;
   begin
        groupId := Integer (groupInterface.getGroupId);
        return WaypointEventHandlerFactory_Package.eventHandlerArray (groupId);
   end getInstance;

   procedure removeAll is
      index : Integer;
   begin
        for index in reverse 0 .. (WaypointEventHandlerFactory_Package.eventHandlerArray'Length) - (1) loop
            WaypointEventHandlerFactory_Package.eventHandlerArray (index).removeAllListeners;
        end loop;
   end removeAll;

   procedure getInstance (groupInterface_Param : access Group_Package.Group'Class) is
      Java_Result : constant WaypointEventHandler_Access := getInstance (groupInterface_Param => groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   eventHandlerArray := new WaypointEventHandler_Access_Array'(WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create);

end org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package;



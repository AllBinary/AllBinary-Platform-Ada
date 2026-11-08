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


with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graph.V_Package;

package body org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package is

   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   subtype GeographicMapCellPositionTracking_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   procedure Initialize_Fields (This : in out GeographicMapCellPositionEventUtil'Class) is
   begin
      null;
      
      This.geographicMapCellPositionEventHandler := GeographicMapCellPositionEventHandler_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellPositionEventUtil'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
      Initialize_Fields (This);
        This.geographicMapCellPositionEvent := GeographicMapCellPositionEvent_Package.Create (anyType, CellPositionFactory_Package.getInstance.NONE);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return GeographicMapCellPositionEventUtil_Access is
      This : constant GeographicMapCellPositionEventUtil_Access := new GeographicMapCellPositionEventUtil;
   begin
      GeographicMapCellPositionEventUtil_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   --  throws Exception
   procedure update (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking_Param : access GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class) is
      geographicMapCellPositionTracking : constant GeographicMapCellPositionTracking_Access := GeographicMapCellPositionTracking_Access (geographicMapCellPositionTracking_Param);
   begin
        This.geographicMapCellPositionEvent.setGeographicMapCellPosition (geographicMapCellPositionTracking.getCurrentGeographicMapCellPosition);
        This.geographicMapCellPositionEventHandler.fireEvent (This.geographicMapCellPositionEvent);
   end update;

   --  throws Exception
   procedure remove (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking_Param : access GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class) is
      geographicMapCellPositionTracking : constant GeographicMapCellPositionTracking_Access := GeographicMapCellPositionTracking_Access (geographicMapCellPositionTracking_Param);
   begin
        This.geographicMapCellPositionEvent.setGeographicMapCellPosition (geographicMapCellPositionTracking.getCurrentGeographicMapCellPosition);
        This.geographicMapCellPositionEventHandler.fireRemoveEvent (This.geographicMapCellPositionEvent);
   end remove;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package;



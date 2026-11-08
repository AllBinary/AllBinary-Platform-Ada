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
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package; use org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;
with org.allbinary.game.tracking.TrackingEventFactory_Package; use org.allbinary.game.tracking.TrackingEventFactory_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;
with org.allbinary.logic.util.cache.BaseCircularPool_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEventFactory_Package;

package body org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package is

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
   subtype AllBinaryEventCircularPool_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   function "=" (Left, Right : TrackingEvent_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   procedure Initialize_Fields (This : in out TrackingEventCircularStaticPool'Class) is
   begin
      null;
      This.EVENT_POOL := AllBinaryEventCircularPool_Package.Create (20);
   end Initialize_Fields;

   procedure Initialize (This : in out TrackingEventCircularStaticPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TrackingEventCircularStaticPool_Access is
      This : constant TrackingEventCircularStaticPool_Access := new TrackingEventCircularStaticPool;
   begin
      TrackingEventCircularStaticPool_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TrackingEventCircularStaticPool_Access is
   begin
        return TrackingEventCircularStaticPool_Access (TrackingEventCircularStaticPool_Package.instance);
   end getInstance;

   procedure init (This : in out TrackingEventCircularStaticPool) is
   begin
        This.EVENT_POOL.initAllBinaryEventCircularPool (TrackingEventFactory_Package.Create);
   end init;

   --  throws Exception
   function getNextInstance (This : in out TrackingEventCircularStaticPool; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return TrackingEvent_Access is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      trackingEvent : TrackingEvent_Access;
   begin
        trackingEvent := TrackingEvent_Access (This.EVENT_POOL.getNextInstance);
        trackingEvent.setLayerInterfaceForCircularStaticPool (layerInterface);
        return trackingEvent;
   end getNextInstance;

   procedure getNextInstance (This : in out TrackingEventCircularStaticPool; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant TrackingEvent_Access := TrackingEventCircularStaticPool'Class (This).getNextInstance (layerInterface_Param => layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextInstance;

begin
   null;
   instance := TrackingEventCircularStaticPool_Package.Create;

end org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package;



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


with org.allbinary.game.tracking.TrackingEventFactory_Package; use org.allbinary.game.tracking.TrackingEventFactory_Package;

package body org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package is

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
        return TrackingEventCircularStaticPool_Package.instance;
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



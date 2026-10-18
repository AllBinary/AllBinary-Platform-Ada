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


with org.allbinary.game.tracking.TrackingEventListenerInterface_Package; use org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;

package body org.allbinary.game.tracking.TrackingEventHandler_Package is

   procedure Initialize_Fields (This : in out TrackingEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TrackingEventHandler_Access is
   begin
        return TrackingEventHandler_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TrackingEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TrackingEventHandler_Access is
      This : constant TrackingEventHandler_Access := new TrackingEventHandler;
   begin
      TrackingEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out TrackingEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      trackingEventListenerInterface : TrackingEventListenerInterface_Access;
   begin
        trackingEventListenerInterface := TrackingEventListenerInterface_Access (eventListenerInterface);
        trackingEventListenerInterface.onMovement (TrackingEvent_Access (eventObject));
   end process;

begin
   null;
   instance := TrackingEventHandler_Package.Create;

end org.allbinary.game.tracking.TrackingEventHandler_Package;



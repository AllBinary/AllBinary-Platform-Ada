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


package body org.allbinary.game.tracking.TrackingEventFactory_Package is

   procedure Initialize_Fields (This : in out TrackingEventFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TrackingEventFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TrackingEventFactory_Access is
      This : constant TrackingEventFactory_Access := new TrackingEventFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out TrackingEventFactory) return AllBinaryEventObject_Access is
   begin
        return TrackingEvent_Package.Create (TrackingEventHandler_Package.getInstance);
   end getInstance;

   procedure getInstance (This : in out TrackingEventFactory) is
      Java_Result : constant AllBinaryEventObject_Access := TrackingEventFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.tracking.TrackingEventFactory_Package;



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


package body org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPositionEventUtil'Class) is
   begin
      null;
      
      This.geographicMapCellPositionEventHandler := GeographicMapCellPositionEventHandler_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellPositionEventUtil'Class; anyType : Java_Object_Access) is
   begin
      Initialize_Fields (This);
        This.geographicMapCellPositionEvent := GeographicMapCellPositionEvent_Package.Create (anyType, CellPositionFactory_Package.getInstance.NONE);
   end Initialize;

   function Create (anyType : Java_Object_Access) return GeographicMapCellPositionEventUtil_Access is
      This : constant GeographicMapCellPositionEventUtil_Access := new GeographicMapCellPositionEventUtil;
   begin
      GeographicMapCellPositionEventUtil_Package.Initialize (This.all, anyType);
      return This;
   end Create;

   --  throws Exception
   procedure update (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking : GeographicMapCellPositionTracking_Access) is
   begin
        This.geographicMapCellPositionEvent.setGeographicMapCellPosition (geographicMapCellPositionTracking.getCurrentGeographicMapCellPosition);
        This.geographicMapCellPositionEventHandler.fireEvent (This.geographicMapCellPositionEvent);
   end update;

   --  throws Exception
   procedure remove (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking : GeographicMapCellPositionTracking_Access) is
   begin
        This.geographicMapCellPositionEvent.setGeographicMapCellPosition (geographicMapCellPositionTracking.getCurrentGeographicMapCellPosition);
        This.geographicMapCellPositionEventHandler.fireRemoveEvent (This.geographicMapCellPositionEvent);
   end remove;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package;



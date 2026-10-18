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


with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package body org.allbinary.bounds.LayerBounds_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   procedure Initialize_Fields (This : in out LayerBounds'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LayerBounds'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
      Initialize_Fields (This);
        This.rectangle := rectangle;
   end Initialize;

   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return LayerBounds_Access is
      This : constant LayerBounds_Access := new LayerBounds;
   begin
      LayerBounds_Package.Initialize (This.all, rectangle_Param);
      return This;
   end Create;

   function getRectangleP (This : in out LayerBounds) return Rectangle_Access is
   begin
        return This.rectangle;
   end getRectangleP;

   procedure visit (This : in out LayerBounds; boundsVisitorInterface_Param : access BoundsVisitorInterface_Package.BoundsVisitorInterface'Class) is
      boundsVisitorInterface : constant BoundsVisitorInterface_Access := BoundsVisitorInterface_Access (boundsVisitorInterface_Param);
   begin
        null;
   end visit;

   procedure onEvent (This : in out LayerBounds; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, LayerBounds_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onBoundsChangeEvent (This : in out LayerBounds; boundsChangeEvent_Param : access BoundsChangeEvent_Package.BoundsChangeEvent'Class) is
      boundsChangeEvent : constant BoundsChangeEvent_Access := BoundsChangeEvent_Access (boundsChangeEvent_Param);
   begin
        This.rectangle := boundsChangeEvent.getRectangle;
   end onBoundsChangeEvent;

end org.allbinary.bounds.LayerBounds_Package;



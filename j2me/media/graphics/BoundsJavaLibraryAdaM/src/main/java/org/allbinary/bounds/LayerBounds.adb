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


with org.allbinary.bounds.event.BoundsChangeEvent_Package; use org.allbinary.bounds.event.BoundsChangeEvent_Package;
with org.allbinary.bounds.event.BoundsChangeEvent_Package_References;
with org.allbinary.bounds.event.BoundsChangeEventListener_Package; use org.allbinary.bounds.event.BoundsChangeEventListener_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package; use org.allbinary.bounds.BoundsVisitorInterface_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package_References;
with org.allbinary.bounds.BoundsVisitorInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.bounds.LayerBounds_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   subtype BoundsChangeEvent_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access;
   function "=" (Left, Right : BoundsChangeEvent_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype BoundsChangeEvent_Access_Array is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array;
   function "=" (Left, Right : BoundsChangeEvent_Access_Array) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype BoundsChangeEvent_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access;
   function "=" (Left, Right : BoundsChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype BoundsChangeEvent_Access_Array_Access_Array is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : BoundsChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype BoundsChangeEvent_Access_Array_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BoundsChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype BoundsVisitorInterface_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
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



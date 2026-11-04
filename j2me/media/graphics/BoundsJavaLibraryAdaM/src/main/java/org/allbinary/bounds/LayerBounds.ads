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

limited with org.allbinary.bounds.LayerBounds_Package;
package org.allbinary.bounds.LayerBounds_Package_References is
   type LayerBounds_Access is access all org.allbinary.bounds.LayerBounds_Package.LayerBounds'Class;
   type LayerBounds_Access_Array is array (Natural range <>) of LayerBounds_Access;
   type LayerBounds_Access_Array_Access is access all LayerBounds_Access_Array;
   type LayerBounds_Access_Array_Access_Array is array (Natural range <>) of LayerBounds_Access_Array_Access;
   type LayerBounds_Access_Array_Access_Array_Access is access all LayerBounds_Access_Array_Access_Array;
end org.allbinary.bounds.LayerBounds_Package_References;

with org.allbinary.bounds.LayerBounds_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.bounds.event.BoundsChangeEvent_Package;
with org.allbinary.bounds.event.BoundsChangeEvent_Package_References;
with org.allbinary.bounds.event.BoundsChangeEventListener_Package; use org.allbinary.bounds.event.BoundsChangeEventListener_Package;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.bounds.BoundsVisitorInterface_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package_References;

package org.allbinary.bounds.LayerBounds_Package is

   package BoundsChangeEvent_Package renames Standard.org.allbinary.bounds.event.BoundsChangeEvent_Package;
   package BoundsChangeEventListener_Package renames Standard.org.allbinary.bounds.event.BoundsChangeEventListener_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype BoundsChangeEvent_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access;
   use type BoundsChangeEvent_Access;
   subtype BoundsChangeEvent_Access_Array is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array;
   use type BoundsChangeEvent_Access_Array;
   subtype BoundsChangeEvent_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access;
   use type BoundsChangeEvent_Access_Array_Access;
   subtype BoundsChangeEvent_Access_Array_Access_Array is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access_Array;
   use type BoundsChangeEvent_Access_Array_Access_Array;
   subtype BoundsChangeEvent_Access_Array_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access_Array_Access;
   use type BoundsChangeEvent_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype BoundsVisitorInterface_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access;
   use type BoundsVisitorInterface_Access;
   subtype BoundsVisitorInterface_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array;
   use type BoundsVisitorInterface_Access_Array;
   subtype BoundsVisitorInterface_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access;
   use type BoundsVisitorInterface_Access_Array_Access;
   subtype BoundsVisitorInterface_Access_Array_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array;
   use type BoundsVisitorInterface_Access_Array_Access_Array;
   subtype BoundsVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array_Access;
   use type BoundsVisitorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerBounds_Access is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access;
   function "=" (Left, Right : LayerBounds_Access) return Boolean renames org.allbinary.bounds.LayerBounds_Package_References."=";
   subtype LayerBounds_Access_Array is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access_Array;
   function "=" (Left, Right : LayerBounds_Access_Array) return Boolean renames org.allbinary.bounds.LayerBounds_Package_References."=";
   subtype LayerBounds_Access_Array_Access is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access_Array_Access;
   function "=" (Left, Right : LayerBounds_Access_Array_Access) return Boolean renames org.allbinary.bounds.LayerBounds_Package_References."=";
   subtype LayerBounds_Access_Array_Access_Array is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access_Array_Access_Array;
   function "=" (Left, Right : LayerBounds_Access_Array_Access_Array) return Boolean renames org.allbinary.bounds.LayerBounds_Package_References."=";
   subtype LayerBounds_Access_Array_Access_Array_Access is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerBounds_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bounds.LayerBounds_Package_References."=";

   type LayerBounds is new Java_Object and BoundsChangeEventListener with record
      logUtil : LogUtil_Access;
      rectangle : Rectangle_Access;
   end record;

   procedure Initialize (This : in out LayerBounds'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return LayerBounds_Access;
   function getRectangleP (This : in out LayerBounds) return Rectangle_Access;
   procedure visit (This : in out LayerBounds; boundsVisitorInterface_Param : access BoundsVisitorInterface_Package.BoundsVisitorInterface'Class);
   procedure onEvent (This : in out LayerBounds; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onBoundsChangeEvent (This : in out LayerBounds; boundsChangeEvent_Param : access BoundsChangeEvent_Package.BoundsChangeEvent'Class);

end org.allbinary.bounds.LayerBounds_Package;



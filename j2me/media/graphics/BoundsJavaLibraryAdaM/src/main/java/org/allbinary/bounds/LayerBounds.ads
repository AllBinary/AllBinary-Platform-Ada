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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.bounds.event.BoundsChangeEvent_Package; use org.allbinary.bounds.event.BoundsChangeEvent_Package;
with org.allbinary.bounds.event.BoundsChangeEventListener_Package; use org.allbinary.bounds.event.BoundsChangeEventListener_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package; use org.allbinary.bounds.BoundsVisitorInterface_Package;

package org.allbinary.bounds.LayerBounds_Package is

   package BoundsChangeEvent_Package renames Standard.org.allbinary.bounds.event.BoundsChangeEvent_Package;
   package BoundsChangeEventListener_Package renames Standard.org.allbinary.bounds.event.BoundsChangeEventListener_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;

   type LayerBounds is tagged;
   type LayerBounds_Access is access all LayerBounds'Class;
   type LayerBounds_Access_Array is array (Natural range <>) of LayerBounds_Access;
   type LayerBounds_Access_Array_Access is access all LayerBounds_Access_Array;

   type LayerBounds is new BoundsChangeEventListener with record
      logUtil : LogUtil_Access;
      rectangle : Rectangle_Access;
   end record;

   procedure Initialize (This : in out LayerBounds'Class; rectangle : Rectangle_Access);
   function Create (rectangle : Rectangle_Access) return LayerBounds_Access;
   function getRectangleP (This : in out LayerBounds) return Rectangle_Access;
   procedure visit (This : in out LayerBounds; boundsVisitorInterface : BoundsVisitorInterface_Access);
   procedure onEvent (This : in out LayerBounds; eventObject : AllBinaryEventObject_Access);
   procedure onBoundsChangeEvent (This : in out LayerBounds; boundsChangeEvent : BoundsChangeEvent_Access);

end org.allbinary.bounds.LayerBounds_Package;



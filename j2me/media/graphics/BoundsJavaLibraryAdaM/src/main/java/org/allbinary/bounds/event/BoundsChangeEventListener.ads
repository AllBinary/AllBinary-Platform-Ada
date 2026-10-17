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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.bounds.event.BoundsChangeEventListener_Package is

   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;

   type BoundsChangeEventListener is interface and EventListenerInterface;
   type BoundsChangeEventListener_Access is access all BoundsChangeEventListener'Class;
   type BoundsChangeEventListener_Access_Array is array (Natural range <>) of BoundsChangeEventListener_Access;
   type BoundsChangeEventListener_Access_Array_Access is access all BoundsChangeEventListener_Access_Array;
   procedure onBoundsChangeEvent (This : in out BoundsChangeEventListener; boundsChangeEvent : BoundsChangeEvent_Access) is abstract;

end org.allbinary.bounds.event.BoundsChangeEventListener_Package;



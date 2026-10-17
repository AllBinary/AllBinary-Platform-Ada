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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

package org.allbinary.game.tracking.TrackingEventFactory_Package is

   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package AllBinaryEventObjectFactoryInterface_Package renames org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

   type TrackingEventFactory is tagged;
   type TrackingEventFactory_Access is access all TrackingEventFactory'Class;
   type TrackingEventFactory_Access_Array is array (Natural range <>) of TrackingEventFactory_Access;
   type TrackingEventFactory_Access_Array_Access is access all TrackingEventFactory_Access_Array;

   type TrackingEventFactory is new AllBinaryEventObjectFactoryInterface with null record;

   procedure Initialize (This : in out TrackingEventFactory'Class);
   function Create return TrackingEventFactory_Access;
   function getInstance (This : in out TrackingEventFactory) return AllBinaryEventObject_Access;
   procedure getInstance (This : in out TrackingEventFactory);

end org.allbinary.game.tracking.TrackingEventFactory_Package;



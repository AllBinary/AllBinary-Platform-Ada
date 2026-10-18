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
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type DestroyedEventHandler is tagged;
   type DestroyedEventHandler_Access is access all DestroyedEventHandler'Class;
   type DestroyedEventHandler_Access_Array is array (Natural range <>) of DestroyedEventHandler_Access;
   type DestroyedEventHandler_Access_Array_Access is access all DestroyedEventHandler_Access_Array;
   type DestroyedEventHandler_Access_Array_Access_Array is array (Natural range <>) of DestroyedEventHandler_Access_Array_Access;
   type DestroyedEventHandler_Access_Array_Access_Array_Access is access all DestroyedEventHandler_Access_Array_Access_Array;

   type DestroyedEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : DestroyedEventHandler_Access;

   procedure Initialize (This : in out DestroyedEventHandler'Class);
   function Create return DestroyedEventHandler_Access;
   function getInstance return DestroyedEventHandler_Access;
   procedure addListener (This : in out DestroyedEventHandler; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   procedure removeAllListeners (This : in out DestroyedEventHandler);
   procedure removeListener (This : in out DestroyedEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out DestroyedEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out DestroyedEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;



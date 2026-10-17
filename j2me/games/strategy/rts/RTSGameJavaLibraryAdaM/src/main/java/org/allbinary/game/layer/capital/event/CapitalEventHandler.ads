-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package; use org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package;
with org.allbinary.game.layer.capital.event.CapitalEvent_Package; use org.allbinary.game.layer.capital.event.CapitalEvent_Package;

package org.allbinary.game.layer.capital.event.CapitalEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type CapitalEventHandler is tagged;
   type CapitalEventHandler_Access is access all CapitalEventHandler'Class;
   type CapitalEventHandler_Access_Array is array (Natural range <>) of CapitalEventHandler_Access;
   type CapitalEventHandler_Access_Array_Access is access all CapitalEventHandler_Access_Array;

   type CapitalEventHandler is new BasicEventHandler with null record;

   procedure Initialize (This : in out CapitalEventHandler'Class);
   function Create return CapitalEventHandler_Access;
   procedure process (This : in out CapitalEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.layer.capital.event.CapitalEventHandler_Package;



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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.game.layer.capital.event.CapitalEvent_Package; use org.allbinary.game.layer.capital.event.CapitalEvent_Package;

package org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type CapitalEventListenerInterface is interface and EventListenerInterface;
   type CapitalEventListenerInterface_Access is access all CapitalEventListenerInterface'Class;
   type CapitalEventListenerInterface_Access_Array is array (Natural range <>) of CapitalEventListenerInterface_Access;
   type CapitalEventListenerInterface_Access_Array_Access is access all CapitalEventListenerInterface_Access_Array;
   type CapitalEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of CapitalEventListenerInterface_Access_Array_Access;
   type CapitalEventListenerInterface_Access_Array_Access_Array_Access is access all CapitalEventListenerInterface_Access_Array_Access_Array;
   procedure onCapitalChangeEvent (This : in out CapitalEventListenerInterface; event_Param : access CapitalEvent_Package.CapitalEvent'Class) is abstract;

end org.allbinary.game.layer.capital.event.CapitalEventListenerInterface_Package;



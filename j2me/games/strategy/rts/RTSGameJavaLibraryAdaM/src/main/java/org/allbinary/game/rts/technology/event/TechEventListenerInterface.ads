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

package org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type TechEventListenerInterface is interface and EventListenerInterface;
   type TechEventListenerInterface_Access is access all TechEventListenerInterface'Class;
   type TechEventListenerInterface_Access_Array is array (Natural range <>) of TechEventListenerInterface_Access;
   type TechEventListenerInterface_Access_Array_Access is access all TechEventListenerInterface_Access_Array;
   type TechEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of TechEventListenerInterface_Access_Array_Access;
   type TechEventListenerInterface_Access_Array_Access_Array_Access is access all TechEventListenerInterface_Access_Array_Access_Array;
   procedure onTechEvent (This : in out TechEventListenerInterface; event_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is abstract;

end org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package;



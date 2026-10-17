-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.capital.event.CapitalEventHandler_Package; use org.allbinary.game.layer.capital.event.CapitalEventHandler_Package;

package org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;

   type CapitalEventHandlerFactory is tagged;
   type CapitalEventHandlerFactory_Access is access all CapitalEventHandlerFactory'Class;
   type CapitalEventHandlerFactory_Access_Array is array (Natural range <>) of CapitalEventHandlerFactory_Access;
   type CapitalEventHandlerFactory_Access_Array_Access is access all CapitalEventHandlerFactory_Access_Array;

   type CapitalEventHandlerFactory is new Java_Object with null record;
   capitalEventHandlerArray : CapitalEventHandler_Access_Array_Access;

   procedure Initialize (This : in out CapitalEventHandlerFactory'Class);
   function Create return CapitalEventHandlerFactory_Access;
   function getInstance (groupInterface_Param : access Group'Class) return CapitalEventHandler_Access;
   procedure getInstance (groupInterface_Param : access Group'Class);
   procedure removeAll;

end org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package;



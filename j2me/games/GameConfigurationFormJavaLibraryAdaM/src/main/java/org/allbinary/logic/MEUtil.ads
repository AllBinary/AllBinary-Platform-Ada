-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
--  with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;

package org.allbinary.logic.MEUtil_Package is

   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;

   type MEUtil is tagged;
   type MEUtil_Access is access all MEUtil'Class;
   type MEUtil_Access_Array is array (Natural range <>) of MEUtil_Access;
   type MEUtil_Access_Array_Access is access all MEUtil_Access_Array;

   type MEUtil is new Java_Object with null record;
   instance : MEUtil_Access;

   procedure Initialize (This : in out MEUtil'Class);
   function Create return MEUtil_Access;
   function getInstance return MEUtil_Access;
   procedure appendItem (This : in out MEUtil; form_Param : access CommandForm_Package.CommandForm'Class; item_Param : access Item_Package.Item'Class);

end org.allbinary.logic.MEUtil_Package;



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

limited with org.allbinary.logic.MEUtil_Package;
package org.allbinary.logic.MEUtil_Package_References is
   type MEUtil_Access is access all org.allbinary.logic.MEUtil_Package.MEUtil'Class;
   type MEUtil_Access_Array is array (Natural range <>) of MEUtil_Access;
   type MEUtil_Access_Array_Access is access all MEUtil_Access_Array;
   type MEUtil_Access_Array_Access_Array is array (Natural range <>) of MEUtil_Access_Array_Access;
   type MEUtil_Access_Array_Access_Array_Access is access all MEUtil_Access_Array_Access_Array;
end org.allbinary.logic.MEUtil_Package_References;

with org.allbinary.logic.MEUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.Item_Package_References;
limited with org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package_References;

package org.allbinary.logic.MEUtil_Package is

   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package Reference_Types is
   subtype Item_Access is javax.microedition.lcdui.Item_Package_References.Item_Access;
   use type Item_Access;
   subtype Item_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array;
   use type Item_Access_Array;
   subtype Item_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access;
   use type Item_Access_Array_Access;
   subtype Item_Access_Array_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array;
   use type Item_Access_Array_Access_Array;
   subtype Item_Access_Array_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array_Access;
   use type Item_Access_Array_Access_Array_Access;
   subtype CommandForm_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access;
   use type CommandForm_Access;
   subtype CommandForm_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array;
   use type CommandForm_Access_Array;
   subtype CommandForm_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access;
   use type CommandForm_Access_Array_Access;
   subtype CommandForm_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array;
   use type CommandForm_Access_Array_Access_Array;
   subtype CommandForm_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array_Access;
   use type CommandForm_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MEUtil_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access;
   function "=" (Left, Right : MEUtil_Access) return Boolean renames org.allbinary.logic.MEUtil_Package_References."=";
   subtype MEUtil_Access_Array is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array;
   function "=" (Left, Right : MEUtil_Access_Array) return Boolean renames org.allbinary.logic.MEUtil_Package_References."=";
   subtype MEUtil_Access_Array_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access;
   function "=" (Left, Right : MEUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.MEUtil_Package_References."=";
   subtype MEUtil_Access_Array_Access_Array is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MEUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.MEUtil_Package_References."=";
   subtype MEUtil_Access_Array_Access_Array_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MEUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.MEUtil_Package_References."=";

   type MEUtil is new Java_Object with null record;
   instance : MEUtil_Access;

   procedure Initialize (This : in out MEUtil'Class);
   function Create return MEUtil_Access;
   function getInstance return MEUtil_Access;
   procedure appendItem (This : in out MEUtil; form_Param : access CommandForm_Package.CommandForm'Class; item_Param : access Item_Package.Item'Class);

end org.allbinary.logic.MEUtil_Package;



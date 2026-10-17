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
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;

package org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package is

   package Node_Package renames org.w3c.dom.Node_Package;

   type DisplayInBrowserContraints is tagged;
   type DisplayInBrowserContraints_Access is access all DisplayInBrowserContraints'Class;
   type DisplayInBrowserContraints_Access_Array is array (Natural range <>) of DisplayInBrowserContraints_Access;
   type DisplayInBrowserContraints_Access_Array_Access is access all DisplayInBrowserContraints_Access_Array;

   type DisplayInBrowserContraints is new DisplayInBrowserContraintsInterface with record
      frameable : Boolean;
      mountable : Boolean;
      quickFrameable : Boolean;
      mountedLink : Unbounded_String;
   end record;

   procedure Initialize (This : in out DisplayInBrowserContraints'Class; node : Node_Access);
   function Create (node : Node_Access) return DisplayInBrowserContraints_Access;
   function isMountable (This : in out DisplayInBrowserContraints) return Boolean;
   procedure isMountable (This : in out DisplayInBrowserContraints);
   procedure setMountable (This : in out DisplayInBrowserContraints; mountable : Boolean);
   function isFrameable (This : in out DisplayInBrowserContraints) return Boolean;
   procedure isFrameable (This : in out DisplayInBrowserContraints);
   procedure setFrameable (This : in out DisplayInBrowserContraints; frameable : Boolean);
   function isQuickFrameable (This : in out DisplayInBrowserContraints) return Boolean;
   procedure isQuickFrameable (This : in out DisplayInBrowserContraints);
   procedure setQuickFrameable (This : in out DisplayInBrowserContraints; quickFrameable : Boolean);
   function getMountedLink (This : in out DisplayInBrowserContraints) return Unbounded_String;
   procedure getMountedLink (This : in out DisplayInBrowserContraints);
   procedure setMountedLink (This : in out DisplayInBrowserContraints; mountedLink : Unbounded_String);

end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;



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
with org.osgi.framework.Bundle_Package; use org.osgi.framework.Bundle_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with bundle.input.automation.InputAutomationBundleActivator_Package; use bundle.input.automation.InputAutomationBundleActivator_Package;
with org.allbinary.gui.dialog.BasicTextJDialog_Package; use org.allbinary.gui.dialog.BasicTextJDialog_Package;

package org.allbinary.input.automation.osgi.DesktopBundle_Package is

   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package InputAutomationBundleActivator_Package renames Standard.bundle.input.automation.InputAutomationBundleActivator_Package;
   package BasicTextJDialog_Package renames Standard.org.allbinary.gui.dialog.BasicTextJDialog_Package;

   type DesktopBundle is tagged;
   type DesktopBundle_Access is access all DesktopBundle'Class;
   type DesktopBundle_Access_Array is array (Natural range <>) of DesktopBundle_Access;
   type DesktopBundle_Access_Array_Access is access all DesktopBundle_Access_Array;

   type DesktopBundle is new Java_Object with record
      bundle : Bundle_Access;
   end record;
   DESKTOP_SYMBOLIC_NAME : Unbounded_String;

   procedure Initialize (This : in out DesktopBundle'Class);
   function Create return DesktopBundle_Access;
   procedure start (This : in out DesktopBundle);

end org.allbinary.input.automation.osgi.DesktopBundle_Package;



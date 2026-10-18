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


with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with bundle.input.automation.InputAutomationBundleActivator_Package; use bundle.input.automation.InputAutomationBundleActivator_Package;
with org.allbinary.gui.dialog.BasicTextJDialog_Package; use org.allbinary.gui.dialog.BasicTextJDialog_Package;
with org.allbinary.input.automation.osgi.JDialog_Package; use org.allbinary.input.automation.osgi.JDialog_Package;

package body org.allbinary.input.automation.osgi.DesktopBundle_Package is

   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package InputAutomationBundleActivator_Package renames Standard.bundle.input.automation.InputAutomationBundleActivator_Package;
   package BasicTextJDialog_Package renames Standard.org.allbinary.gui.dialog.BasicTextJDialog_Package;
   procedure Initialize_Fields (This : in out DesktopBundle'Class) is
   begin
      null;
      This.bundle := null;
   end Initialize_Fields;


   procedure Initialize (This : in out DesktopBundle'Class) is
      bundleContext : BundleContext_Access;
      textJDialog : JDialog_Access;
      bundleArray : Bundle_Access_Array_Access;
      bundle : Bundle_Access;
      symbolicName : Unbounded_String;
      index : Integer;
   begin
      Initialize_Fields (This);
        bundleContext := InputAutomationBundleActivator_Package.getBundleContext;
        if (bundleContext) /= (null) then
            bundleArray := bundleContext.getBundles;
            for index in 0 .. (bundleArray'Length) - 1 loop
                bundle := bundleArray (index);
                symbolicName := bundle.getSymbolicName;
                if (Java_Compare_To (symbolicName, DesktopBundle_Package.DESKTOP_SYMBOLIC_NAME)) = (0) then
                    This.bundle := bundle;
                end if;
            end loop;
        else
            textJDialog := JDialog_Access (BasicTextJDialog_Package.Create (To_Unbounded_String ("BundlContext is Null")));
            textJDialog.setVisible (True);
        end if;
   end Initialize;

   function Create return DesktopBundle_Access is
      This : constant DesktopBundle_Access := new DesktopBundle;
   begin
      DesktopBundle_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure start (This : in out DesktopBundle) is
   begin
        This.bundle.start;
   end start;

begin
   null;
   DESKTOP_SYMBOLIC_NAME := To_Unbounded_String ("org.knopflerfish.bundle.desktop");

end org.allbinary.input.automation.osgi.DesktopBundle_Package;



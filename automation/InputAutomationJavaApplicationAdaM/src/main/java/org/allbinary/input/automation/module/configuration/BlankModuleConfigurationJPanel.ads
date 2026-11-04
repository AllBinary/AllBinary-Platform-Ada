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

limited with org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;
package org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References is
   type BlankModuleConfigurationJPanel_Access is access all org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package.BlankModuleConfigurationJPanel'Class;
   type BlankModuleConfigurationJPanel_Access_Array is array (Natural range <>) of BlankModuleConfigurationJPanel_Access;
   type BlankModuleConfigurationJPanel_Access_Array_Access is access all BlankModuleConfigurationJPanel_Access_Array;
   type BlankModuleConfigurationJPanel_Access_Array_Access_Array is array (Natural range <>) of BlankModuleConfigurationJPanel_Access_Array_Access;
   type BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access is access all BlankModuleConfigurationJPanel_Access_Array_Access_Array;
end org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References;

with org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.configuration.JPanel_Package; use org.allbinary.input.automation.module.configuration.JPanel_Package;

package org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BlankModuleConfigurationJPanel_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";

   type BlankModuleConfigurationJPanel is new JPanel with record
      jLabel1 : JLabel_Access;
   end record;

   procedure Initialize (This : in out BlankModuleConfigurationJPanel'Class);
   function Create return BlankModuleConfigurationJPanel_Access;
   procedure initComponents (This : in out BlankModuleConfigurationJPanel);

end org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;



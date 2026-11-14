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

with AllBinary_Java;
limited with org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;
package org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References is
   type BlankModuleConfigurationJPanel_Access is access all org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package.BlankModuleConfigurationJPanel'Class;
   type BlankModuleConfigurationJPanel_Access_Array is array (Natural range <>) of BlankModuleConfigurationJPanel_Access;
   type BlankModuleConfigurationJPanel_Access_Array_Access is access all BlankModuleConfigurationJPanel_Access_Array;
   type BlankModuleConfigurationJPanel_Access_Array_Access_Array is array (Natural range <>) of BlankModuleConfigurationJPanel_Access_Array_Access;
   type BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access is access all BlankModuleConfigurationJPanel_Access_Array_Access_Array;
   type BlankModuleConfigurationJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BlankModuleConfigurationJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : BlankModuleConfigurationJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BlankModuleConfigurationJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BlankModuleConfigurationJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BlankModuleConfigurationJPanel_Access_Array_Access is (if Value /= null and then Value.all in BlankModuleConfigurationJPanel_Access_Array_Object'Class then BlankModuleConfigurationJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type BlankModuleConfigurationJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BlankModuleConfigurationJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BlankModuleConfigurationJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BlankModuleConfigurationJPanel_Access_Array_Access_Array_Object'Class then BlankModuleConfigurationJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;

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
   function Java_Box (Value : BlankModuleConfigurationJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.Java_Box;
   function Java_Unbox_BlankModuleConfigurationJPanel_Access_Array (Value : access Java_Object'Class) return BlankModuleConfigurationJPanel_Access_Array_Access renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.Java_Unbox_BlankModuleConfigurationJPanel_Access_Array;
   subtype BlankModuleConfigurationJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   function Java_Box (Value : BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.Java_Box;
   function Java_Unbox_BlankModuleConfigurationJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.Java_Unbox_BlankModuleConfigurationJPanel_Access_Array_Access_Array;

   type BlankModuleConfigurationJPanel is new Java_Object with record
      jLabel1 : JLabel_Access;
   end record;

   procedure Initialize (This : in out BlankModuleConfigurationJPanel'Class);
   function Create return BlankModuleConfigurationJPanel_Access;
   procedure initComponents (This : in out BlankModuleConfigurationJPanel);

end org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;



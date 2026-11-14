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
limited with org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;
package org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References is
   type PropertiesJPanel_Access is access all org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package.PropertiesJPanel'Class;
   type PropertiesJPanel_Access_Array is array (Natural range <>) of PropertiesJPanel_Access;
   type PropertiesJPanel_Access_Array_Access is access all PropertiesJPanel_Access_Array;
   type PropertiesJPanel_Access_Array_Access_Array is array (Natural range <>) of PropertiesJPanel_Access_Array_Access;
   type PropertiesJPanel_Access_Array_Access_Array_Access is access all PropertiesJPanel_Access_Array_Access_Array;
   type PropertiesJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PropertiesJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : PropertiesJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PropertiesJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PropertiesJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PropertiesJPanel_Access_Array_Access is (if Value /= null and then Value.all in PropertiesJPanel_Access_Array_Object'Class then PropertiesJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type PropertiesJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PropertiesJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PropertiesJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PropertiesJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PropertiesJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PropertiesJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PropertiesJPanel_Access_Array_Access_Array_Object'Class then PropertiesJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References;

with org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.Font_Package; use java.awt.Font_Package;
--  with java.awt.GridLayout_Package; use java.awt.GridLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JTextField_Package; use javax.swing.JTextField_Package;

package org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PropertiesJPanel_Access is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access;
   function "=" (Left, Right : PropertiesJPanel_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References."=";
   subtype PropertiesJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access_Array;
   function "=" (Left, Right : PropertiesJPanel_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References."=";
   subtype PropertiesJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access_Array_Access;
   function "=" (Left, Right : PropertiesJPanel_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References."=";
   function Java_Box (Value : PropertiesJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.Java_Box;
   function Java_Unbox_PropertiesJPanel_Access_Array (Value : access Java_Object'Class) return PropertiesJPanel_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.Java_Unbox_PropertiesJPanel_Access_Array;
   subtype PropertiesJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : PropertiesJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References."=";
   subtype PropertiesJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PropertiesJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References."=";
   function Java_Box (Value : PropertiesJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.Java_Box;
   function Java_Unbox_PropertiesJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return PropertiesJPanel_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.Java_Unbox_PropertiesJPanel_Access_Array_Access_Array;

   type PropertiesJPanel is new Java_Object with record
      rotateJButton : JButton_Access;
      copyVerticalJButton : JButton_Access;
      leftJButton : JButton_Access;
      rotateJPanel : JPanel_Access;
      angleJTextField : JTextField_Access;
      workAreaPropertiesJPanel : JPanel_Access;
      modifierJPanel : JPanel_Access;
      upJButton : JButton_Access;
      jPanel8 : JPanel_Access;
      downJButton : JButton_Access;
      jPanel7 : JPanel_Access;
      rightJButton : JButton_Access;
      copyHorizontalJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out PropertiesJPanel'Class);
   function Create return PropertiesJPanel_Access;
   procedure set (This : in out PropertiesJPanel; panel_Param : access JPanel_Package.JPanel'Class);
   procedure initComponents (This : in out PropertiesJPanel);

end org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;



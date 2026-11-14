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
limited with org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package;
package org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References is
   type ToolJPanel_Access is access all org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package.ToolJPanel'Class;
   type ToolJPanel_Access_Array is array (Natural range <>) of ToolJPanel_Access;
   type ToolJPanel_Access_Array_Access is access all ToolJPanel_Access_Array;
   type ToolJPanel_Access_Array_Access_Array is array (Natural range <>) of ToolJPanel_Access_Array_Access;
   type ToolJPanel_Access_Array_Access_Array_Access is access all ToolJPanel_Access_Array_Access_Array;
   type ToolJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ToolJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : ToolJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ToolJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ToolJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ToolJPanel_Access_Array_Access is (if Value /= null and then Value.all in ToolJPanel_Access_Array_Object'Class then ToolJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type ToolJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ToolJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ToolJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ToolJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ToolJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ToolJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ToolJPanel_Access_Array_Access_Array_Object'Class then ToolJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References;
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
--  with java.awt.event.MouseAdapter_Package; use java.awt.event.MouseAdapter_Package;
--  with java.awt.event.MouseEvent_Package; use java.awt.event.MouseEvent_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JList_Package; use javax.swing.JList_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;

package org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ToolJPanel_Access is org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.ToolJPanel_Access;
   function "=" (Left, Right : ToolJPanel_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References."=";
   subtype ToolJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.ToolJPanel_Access_Array;
   function "=" (Left, Right : ToolJPanel_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References."=";
   subtype ToolJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.ToolJPanel_Access_Array_Access;
   function "=" (Left, Right : ToolJPanel_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References."=";
   function Java_Box (Value : ToolJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.Java_Box;
   function Java_Unbox_ToolJPanel_Access_Array (Value : access Java_Object'Class) return ToolJPanel_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.Java_Unbox_ToolJPanel_Access_Array;
   subtype ToolJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.ToolJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : ToolJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References."=";
   subtype ToolJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.ToolJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ToolJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References."=";
   function Java_Box (Value : ToolJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.Java_Box;
   function Java_Unbox_ToolJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return ToolJPanel_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package_References.Java_Unbox_ToolJPanel_Access_Array_Access_Array;

   type ToolJPanel is new Java_Object with record
      arcJButton : JButton_Access;
      charJButton : JButton_Access;
      colorJList : JList_Access;
      colorJPanel : JPanel_Access;
      dottedArcJButton : JButton_Access;
      dottedFillArcJButton : JButton_Access;
      dottedFillRectJButton : JButton_Access;
      dottedFillRountRectJButton : JButton_Access;
      dottedLineJButton : JButton_Access;
      dottedRectButton : JButton_Access;
      fillArcJButton : JButton_Access;
      fillRectJButton : JButton_Access;
      fillRoundRectJButton : JButton_Access;
      imageJButton : JButton_Access;
      lineJButton : JButton_Access;
      rectJButton : JButton_Access;
      roundRectJButton : JButton_Access;
      stringJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out ToolJPanel'Class);
   function Create return ToolJPanel_Access;
   procedure initComponents (This : in out ToolJPanel);
   procedure dottedFillRountRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure dottedFillArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure dottedFillRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure dottedArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure dottedRectButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure dottedLineJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure fillRoundRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure fillRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure fillArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure imageJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure roundRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure charJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure stringJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure arcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure rectJButtonMouseClicked (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure lineJButtonMouseClicked (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);

end org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package;



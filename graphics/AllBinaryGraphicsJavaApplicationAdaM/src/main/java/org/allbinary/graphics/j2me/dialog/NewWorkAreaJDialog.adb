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


with org.allbinary.graphics.j2me.GraphicsException_Package; use org.allbinary.graphics.j2me.GraphicsException_Package;
with org.allbinary.graphics.j2me.MyFrame_Package; use org.allbinary.graphics.j2me.MyFrame_Package;
with org.allbinary.graphics.j2me.MyFrame_Package_References;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
with org.allbinary.graphics.j2me.dialog.Dimension_Package; use org.allbinary.graphics.j2me.dialog.Dimension_Package;
with org.allbinary.graphics.j2me.dialog.Dimension_Package_References;
with org.allbinary.graphics.j2me.dialog.JTextField_Package; use org.allbinary.graphics.j2me.dialog.JTextField_Package;
with org.allbinary.graphics.j2me.dialog.JTextField_Package_References;
with org.allbinary.graphics.j2me.dialog.JButton_Package; use org.allbinary.graphics.j2me.dialog.JButton_Package;
with org.allbinary.graphics.j2me.dialog.GridLayout_Package; use org.allbinary.graphics.j2me.dialog.GridLayout_Package;
with org.allbinary.graphics.j2me.dialog.JLabel_Package; use org.allbinary.graphics.j2me.dialog.JLabel_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package;
with org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;
with org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;

package body org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package is

   package GraphicsException_Package renames Standard.org.allbinary.graphics.j2me.GraphicsException_Package;
   package WorkAreaJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
   package WorkAreaJPanelInterface_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
   subtype MyFrame_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access;
   function "=" (Left, Right : MyFrame_Access) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   subtype MyFrame_Access_Array is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array;
   function "=" (Left, Right : MyFrame_Access_Array) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   subtype MyFrame_Access_Array_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access;
   function "=" (Left, Right : MyFrame_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   subtype MyFrame_Access_Array_Access_Array is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access_Array;
   function "=" (Left, Right : MyFrame_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   subtype MyFrame_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFrame_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   subtype Dimension_Access is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access;
   function "=" (Left, Right : Dimension_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.Dimension_Package_References."=";
   subtype Dimension_Access_Array is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access_Array;
   function "=" (Left, Right : Dimension_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.Dimension_Package_References."=";
   subtype Dimension_Access_Array_Access is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access_Array_Access;
   function "=" (Left, Right : Dimension_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.Dimension_Package_References."=";
   subtype Dimension_Access_Array_Access_Array is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access_Array_Access_Array;
   function "=" (Left, Right : Dimension_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.Dimension_Package_References."=";
   subtype Dimension_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.dialog.Dimension_Package_References.Dimension_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Dimension_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.Dimension_Package_References."=";
   subtype JTextField_Access is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access;
   function "=" (Left, Right : JTextField_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.JTextField_Package_References."=";
   subtype JTextField_Access_Array is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access_Array;
   function "=" (Left, Right : JTextField_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.JTextField_Package_References."=";
   subtype JTextField_Access_Array_Access is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access_Array_Access;
   function "=" (Left, Right : JTextField_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.JTextField_Package_References."=";
   subtype JTextField_Access_Array_Access_Array is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access_Array_Access_Array;
   function "=" (Left, Right : JTextField_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.dialog.JTextField_Package_References."=";
   subtype JTextField_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.dialog.JTextField_Package_References.JTextField_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JTextField_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.dialog.JTextField_Package_References."=";
   procedure Initialize_Fields (This : in out NewWorkAreaJDialog'Class) is
   begin
      null;
      This.parent := null;
      This.dimension := null;
      This.xSizeJTextField := null;
      This.ySizeJTextField := null;
      This.nameJTextField := null;
   end Initialize_Fields;


   procedure Initialize (This : in out NewWorkAreaJDialog'Class; parent_Param : access MyFrame_Package.MyFrame'Class; modal : Boolean; dimension_Param : access Dimension_Package.Dimension'Class; newName : Unbounded_String) is
      parent : constant MyFrame_Access := MyFrame_Access (parent_Param);
      dimension : constant Dimension_Access := Dimension_Access (dimension_Param);
      submitButton : JButton_Access;
   begin
        JDialog_Package.Initialize (This, Frame_Access (parent), modal);
        Initialize_Fields (This);
        begin
            NewWorkAreaJDialog'Class (This).initComponents;
            This.parent := parent;
            This.xSizeJTextField := JTextField_Package.Create (To_Unbounded_String ("12"));
            This.ySizeJTextField := JTextField_Package.Create (To_Unbounded_String ("12"));
            This.nameJTextField := JTextField_Package.Create (newName);
            This.dimension := dimension;
            submitButton := JButton_Package.Create (To_Unbounded_String ("Ok"));
            submitButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--                  
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                      begin
--                          NewWorkAreaJDialog'Class (This).disposeNewDialog;
--                      exception
--                          when Java_Occurrence : others =>
--                              declare
--                                  e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                              begin
--                          null;
--                              end;
--                      end;
--     end actionPerformed;
);
            NewWorkAreaJDialog'Class (This).setSize (150, 100);
            NewWorkAreaJDialog'Class (This).getContentPane.setLayout (GridLayout_Package.Create (5, 2));
            NewWorkAreaJDialog'Class (This).getContentPane.add (JLabel_Package.Create (To_Unbounded_String ("Please enter")));
            NewWorkAreaJDialog'Class (This).getContentPane.add (JLabel_Package.Create (To_Unbounded_String (" the size.")));
            NewWorkAreaJDialog'Class (This).getContentPane.add (JLabel_Package.Create (To_Unbounded_String ("Name:")));
            NewWorkAreaJDialog'Class (This).getContentPane.add (This.nameJTextField);
            NewWorkAreaJDialog'Class (This).getContentPane.add (JLabel_Package.Create (To_Unbounded_String ("X: ")));
            NewWorkAreaJDialog'Class (This).getContentPane.add (This.xSizeJTextField);
            NewWorkAreaJDialog'Class (This).getContentPane.add (JLabel_Package.Create (To_Unbounded_String ("Y: ")));
            NewWorkAreaJDialog'Class (This).getContentPane.add (This.ySizeJTextField);
            NewWorkAreaJDialog'Class (This).getContentPane.add (submitButton);
            NewWorkAreaJDialog'Class (This).show;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (parent_Param : access MyFrame_Package.MyFrame'Class; modal : Boolean; dimension_Param : access Dimension_Package.Dimension'Class; newName : Unbounded_String) return NewWorkAreaJDialog_Access is
      This : constant NewWorkAreaJDialog_Access := new NewWorkAreaJDialog;
   begin
      NewWorkAreaJDialog_Package.Initialize (This.all, parent_Param, modal, dimension_Param, newName);
      return This;
   end Create;

   --  throws Exception
   procedure disposeNewDialog (This : in out NewWorkAreaJDialog) is
      canvasWidth : Integer;
      canvasHeight : Integer;
      newName : Unbounded_String;
      workAreaJPanel : WorkAreaJPanel_Access;
   begin
        begin
            canvasWidth := This.xSizeJTextField.getText;
            canvasHeight := This.ySizeJTextField.getText;
            newName := This.nameJTextField.getText;
            if (newName) = (Null_Unbounded_String) then
                Java_Throw (Java_New_Exception ("GraphicsException", To_Unbounded_String ("No Name"), NewWorkAreaJDialog_Access'(This'Unchecked_Access), To_Unbounded_String ("disposeNewDialog")));
            end if;
            workAreaJPanel := WorkAreaJPanel_Package.Create (newName, This.dimension, Integer (canvasWidth), Integer (canvasHeight));
            workAreaJPanel.setLayout (GridLayout_Package.Create (1, 1));
            This.parent.add (WorkAreaJPanelInterface_Access (workAreaJPanel));
            NewWorkAreaJDialog'Class (This).dispose;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end disposeNewDialog;

   procedure initComponents (This : in out NewWorkAreaJDialog) is
   begin
        NewWorkAreaJDialog'Class (This).addWindowListener (WindowAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure windowClosing (This : in out ; evt_Param : access WindowEvent_Package.WindowEvent'Class) is
--        evt : constant WindowEvent_Access := WindowEvent_Access (evt_Param);
--     begin
--                  NewWorkAreaJDialog'Class (This).closeDialog (evt);
--     end windowClosing;
);
        NewWorkAreaJDialog'Class (This).pack;
   end initComponents;

   procedure closeDialog (This : in out NewWorkAreaJDialog; evt_Param : access WindowEvent_Package.WindowEvent'Class) is
      evt : constant WindowEvent_Access := WindowEvent_Access (evt_Param);
   begin
        NewWorkAreaJDialog'Class (This).setVisible (False);
        NewWorkAreaJDialog'Class (This).dispose;
   end closeDialog;

   procedure main (args : Unbounded_String_Array_Access) is
   begin
        begin
            NewWorkAreaJDialog_Package.Create (MyFrame_Package.Create, True, Dimension_Package.Create (100, 100), To_Unbounded_String ("testing")).show;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end main;

end org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package;



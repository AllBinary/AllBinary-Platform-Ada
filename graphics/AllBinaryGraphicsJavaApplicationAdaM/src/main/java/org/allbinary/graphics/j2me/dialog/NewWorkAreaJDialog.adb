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


package body org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package is

   procedure Initialize_Fields (This : in out NewWorkAreaJDialog'Class) is
   begin
      null;
      This.parent := null;
      This.dimension := null;
      This.xSizeJTextField := null;
      This.ySizeJTextField := null;
      This.nameJTextField := null;
   end Initialize_Fields;


   procedure Initialize (This : in out NewWorkAreaJDialog'Class; parent_Param : access MyFrame'Class; modal : Boolean; dimension_Param : access Dimension'Class; newName : Unbounded_String) is
      parent : MyFrame_Access := MyFrame_Access (parent_Param);
      dimension : Dimension_Access := Dimension_Access (dimension_Param);
      submitButton : JButton_Access;
   begin
        JDialog_Package.Initialize (This, Frame_Access (parent), modal);
        Initialize_Fields (This);
        begin
            This.initComponents;
            This.parent := parent;
            This.xSizeJTextField := JTextField_Package.Create (To_Unbounded_String ("12"));
            This.ySizeJTextField := JTextField_Package.Create (To_Unbounded_String ("12"));
            This.nameJTextField := JTextField_Package.Create (newName);
            This.dimension := dimension;
            submitButton := JButton_Package.Create (To_Unbounded_String ("Ok"));
            submitButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--                  
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                      begin
--                          This.disposeNewDialog;
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
            This.setSize (150, 100);
            This.getContentPane.setLayout (GridLayout_Package.Create (5, 2));
            This.getContentPane.add (JLabel_Package.Create (To_Unbounded_String ("Please enter")));
            This.getContentPane.add (JLabel_Package.Create (To_Unbounded_String (" the size.")));
            This.getContentPane.add (JLabel_Package.Create (To_Unbounded_String ("Name:")));
            This.getContentPane.add (This.nameJTextField);
            This.getContentPane.add (JLabel_Package.Create (To_Unbounded_String ("X: ")));
            This.getContentPane.add (This.xSizeJTextField);
            This.getContentPane.add (JLabel_Package.Create (To_Unbounded_String ("Y: ")));
            This.getContentPane.add (This.ySizeJTextField);
            This.getContentPane.add (submitButton);
            This.show;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (parent_Param : access MyFrame'Class; modal : Boolean; dimension_Param : access Dimension'Class; newName : Unbounded_String) return NewWorkAreaJDialog_Access is
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
            workAreaJPanel := WorkAreaJPanel_Package.Create (newName, This.dimension, canvasWidth.intValue, canvasHeight.intValue);
            workAreaJPanel.setLayout (GridLayout_Package.Create (1, 1));
            This.parent.add (WorkAreaJPanelInterface_Access (workAreaJPanel));
            This.dispose;
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
        This.addWindowListener (WindowAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure windowClosing (This : in out ; evt_Param : access WindowEvent'Class) is
--        evt : WindowEvent_Access := WindowEvent_Access (evt_Param);
--     begin
--                  This.closeDialog (evt);
--     end windowClosing;
);
        This.pack;
   end initComponents;

   procedure closeDialog (This : in out NewWorkAreaJDialog; evt_Param : access WindowEvent'Class) is
      evt : WindowEvent_Access := WindowEvent_Access (evt_Param);
   begin
        This.setVisible (False);
        This.dispose;
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



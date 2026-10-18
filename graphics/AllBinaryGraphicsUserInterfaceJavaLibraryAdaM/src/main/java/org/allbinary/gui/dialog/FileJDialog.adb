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


with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with java.io.File_Package; use java.io.File_Package;

package body org.allbinary.gui.dialog.FileJDialog_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package File_Package renames Standard.java.io.File_Package;
   procedure Initialize_Fields (This : in out FileJDialog'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.finishedListenerInterface := null;
      This.jFileChooser1 := null;
   end Initialize_Fields;


   procedure Initialize (This : in out FileJDialog'Class) is
   begin
        JDialog_Package.Initialize (This);
        Initialize_Fields (This);
        FileJDialog'Class (This).initComponents;
        FileJDialog'Class (This).getJFileChooser1.setMultiSelectionEnabled (True);
   end Initialize;

   function Create return FileJDialog_Access is
      This : constant FileJDialog_Access := new FileJDialog;
   begin
      FileJDialog_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out FileJDialog'Class; parent_Param : access Frame_Package.Frame'Class; modal : Boolean) is
      parent : constant Frame_Access := Frame_Access (parent_Param);
   begin
        JDialog_Package.Initialize (This, parent, modal);
        Initialize_Fields (This);
        FileJDialog'Class (This).initComponents;
        FileJDialog'Class (This).getJFileChooser1.setMultiSelectionEnabled (True);
   end Initialize;

   function Create (parent_Param : access Frame_Package.Frame'Class; modal : Boolean) return FileJDialog_Access is
      This : constant FileJDialog_Access := new FileJDialog;
   begin
      FileJDialog_Package.Initialize (This.all, parent_Param, modal);
      return This;
   end Create;

   procedure addFinishedListener (This : in out FileJDialog; finishedListenerInterface_Param : access FileJDialogListenerInterface_Package.FileJDialogListenerInterface'Class) is
      finishedListenerInterface : constant FileJDialogListenerInterface_Access := FileJDialogListenerInterface_Access (finishedListenerInterface_Param);
   begin
        This.finishedListenerInterface := finishedListenerInterface;
   end addFinishedListener;

   procedure initComponents (This : in out FileJDialog) is
      layout : GroupLayout_Access;
   begin
        This.jFileChooser1 := JFileChooser_Package.Create;
        FileJDialog'Class (This).setDefaultCloseOperation (javax_Package.swing.WindowConstants.DISPOSE_ON_CLOSE);
        This.jFileChooser1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  FileJDialog'Class (This).jFileChooser1ActionPerformed (evt);
--     end actionPerformed;
);
        layout := GroupLayout_Package.Create (FileJDialog'Class (This).getContentPane);
        FileJDialog'Class (This).getContentPane.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (org_Package.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup.addContainerGap (org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Integer'Last).add (This.jFileChooser1, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addContainerGap));
        layout.setVerticalGroup (layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (layout.createSequentialGroup.addContainerGap.add (This.jFileChooser1, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 357, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addContainerGap (org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Integer'Last)));
        FileJDialog'Class (This).pack;
   end initComponents;

   procedure jFileChooser1ActionPerformed (This : in out FileJDialog; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      files : File_Access_Array_Access;
   begin
        This.logUtil.putF (To_Unbounded_String ("Starting Action Command: ") & Java_Image (evt.getActionCommand), FileJDialog_Access'(This'Unchecked_Access), To_Unbounded_String ("ActionPerformed"));
        files := FileJDialog'Class (This).getJFileChooser1.getSelectedFiles;
        if (evt.getActionCommand) = (FileJDialog'Class (This).getJFileChooser1.CANCEL_SELECTION) then
            FileJDialog'Class (This).setVisible (False);
        end if;
        if (evt.getActionCommand) = (FileJDialog'Class (This).getJFileChooser1.APPROVE_SELECTION) then
            if ((files) /= (null)) and then ((files'Length) > (0)) then
                This.finishedListenerInterface.onFiles (files);
            end if;
        end if;
   end jFileChooser1ActionPerformed;

   procedure main (args : Unbounded_String_Array_Access) is
   begin
        java_Package.awt.EventQueue.invokeLater (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--     begin
--                  FileJDialog_Package.Create (JFrame_Package.Create, True).setVisible (True);
--     end run;
);
   end main;

   function getJFileChooser1 (This : in out FileJDialog) return JFileChooser_Access is
   begin
        return This.jFileChooser1;
   end getJFileChooser1;

   procedure setJFileChooser1 (This : in out FileJDialog; jFileChooser1_Param : access JFileChooser_Package.JFileChooser'Class) is
      jFileChooser1 : constant JFileChooser_Access := JFileChooser_Access (jFileChooser1_Param);
   begin
        This.jFileChooser1 := jFileChooser1;
   end setJFileChooser1;

end org.allbinary.gui.dialog.FileJDialog_Package;



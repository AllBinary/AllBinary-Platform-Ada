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


package body org.allbinary.gui.dialog.BasicTextJDialog_Package is

   procedure Initialize_Fields (This : in out BasicTextJDialog'Class) is
   begin
      null;
      This.closeListenerInterface := null;
      This.jButton1 := null;
      This.textJLabel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTextJDialog'Class; parent : Frame_Access; modal : Boolean; text : Unbounded_String) is
   begin
        JDialog_Package.Initialize (This, parent, modal);
        Initialize_Fields (This);
        This.initComponents;
        This.setText (text);
   end Initialize;

   function Create (parent : Frame_Access; modal : Boolean; text : Unbounded_String) return BasicTextJDialog_Access is
      This : constant BasicTextJDialog_Access := new BasicTextJDialog;
   begin
      Initialize (This.all, parent, modal, text);
      return This;
   end Create;

   procedure setText (This : in out BasicTextJDialog; text : Unbounded_String) is
   begin
        This.textJLabel.setText (text);
   end setText;

   procedure addCloseListener (This : in out BasicTextJDialog; closeListenerInterface : CloseJDialogListenerInterface_Access) is
   begin
        This.closeListenerInterface := closeListenerInterface;
   end addCloseListener;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out BasicTextJDialog'Class; text : Unbounded_String) is
   begin
      JDialog_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
        This.textJLabel.setText (text);
   end Initialize;

   function Create (text : Unbounded_String) return BasicTextJDialog_Access is
      This : constant BasicTextJDialog_Access := new BasicTextJDialog;
   begin
      Initialize (This.all, text);
      return This;
   end Create;

   procedure initComponents (This : in out BasicTextJDialog) is
      layout : GroupLayout_Access;
   begin
        This.jButton1 := JButton_Package.Create;
        This.textJLabel := JLabel_Package.Create;
        This.setDefaultCloseOperation (javax_Package.swing.WindowConstants.DISPOSE_ON_CLOSE);
        This.jButton1.setText (To_Unbounded_String ("OK"));
        This.jButton1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.jButton1ActionPerformed (evt);
--     end actionPerformed;
);
        This.textJLabel.setText (To_Unbounded_String ("No Text Set"));
        layout := GroupLayout_Package.Create (This.getContentPane);
        This.getContentPane.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addGap (80, 80, 80).addComponent (This.jButton1)).addGroup (layout.createSequentialGroup.addContainerGap.addComponent (This.textJLabel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 184, Short_Package.MAX_VALUE))).addContainerGap));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addGap (20, 20, 20).addComponent (This.textJLabel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 20, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addGap (30, 30, 30).addComponent (This.jButton1)));
        This.pack;
   end initComponents;

   procedure jButton1ActionPerformed (This : in out BasicTextJDialog; evt : ActionEvent_Access) is
   begin
        This.setVisible (False);
        if (This.closeListenerInterface) /= (null) then
            This.closeListenerInterface.onClose;
        end if;
   end jButton1ActionPerformed;

   procedure main (args : Unbounded_String_Array_Access) is
   begin
        java_Package.awt.EventQueue.invokeLater (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--     begin
--                  BasicTextJDialog_Package.Create (JFrame_Package.Create, True, To_Unbounded_String ("Test")).setVisible (True);
--     end run;
);
   end main;

end org.allbinary.gui.dialog.BasicTextJDialog_Package;



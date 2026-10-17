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


package body org.allbinary.graphics.j2me.dialog.RotateJDialog_Package is

   procedure Initialize_Fields (This : in out RotateJDialog'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.hashMap := StdUtil_Package.getInstance.createHashMap;
      This.angleIncrementJTextField := null;
      This.jButton1 := null;
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.jPanel1 := null;
      This.totalRotationJTextField := null;
   end Initialize_Fields;


   procedure Initialize (This : in out RotateJDialog'Class; parent : Frame_Access; modal : Boolean) is
   begin
        JDialog_Package.Initialize (This, parent, modal);
        Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create (parent : Frame_Access; modal : Boolean) return RotateJDialog_Access is
      This : constant RotateJDialog_Access := new RotateJDialog;
   begin
      RotateJDialog_Package.Initialize (This.all, parent, modal);
      return This;
   end Create;

   procedure initComponents (This : in out RotateJDialog) is
      jPanel1Layout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.angleIncrementJTextField := JTextField_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.totalRotationJTextField := JTextField_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        This.jPanel1 := JPanel_Package.Create;
        This.jButton1 := JButton_Package.Create;
        This.setDefaultCloseOperation (javax_Package.swing.WindowConstants.DISPOSE_ON_CLOSE);
        This.angleIncrementJTextField.setText (To_Unbounded_String ("36"));
        This.jLabel1.setText (To_Unbounded_String ("Angle Increment:"));
        This.totalRotationJTextField.setText (To_Unbounded_String ("360"));
        This.jLabel2.setText (To_Unbounded_String ("Total Angular Rotation:"));
        This.jButton1.setText (To_Unbounded_String ("OK"));
        This.jButton1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.jButton1ActionPerformed (evt);
--     end actionPerformed;
);
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel1Layout.createSequentialGroup.addGap (62, 62, 62).addComponent (This.jButton1).addContainerGap (62, Short_Package.MAX_VALUE)));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jButton1));
        layout := GroupLayout_Package.Create (This.getContentPane);
        This.getContentPane.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING).addComponent (This.jLabel1).addComponent (This.jLabel2)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.UNRELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.totalRotationJTextField, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 31, Short_Package.MAX_VALUE).addComponent (This.angleIncrementJTextField, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 31, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addContainerGap).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.angleIncrementJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel1)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.totalRotationJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel2)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 16, Short_Package.MAX_VALUE).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addContainerGap));
        This.pack;
   end initComponents;

   procedure jButton1ActionPerformed (This : in out RotateJDialog; evt : ActionEvent_Access) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.hashMap.put (To_Unbounded_String (Java_Image (0)), To_Unbounded_String (Java_Image (This.angleIncrementJTextField.getText)));
            This.hashMap.put (To_Unbounded_String (Java_Image (1)), To_Unbounded_String (Java_Image (This.totalRotationJTextField.getText)));
            (HashMapJDialogListenerInterface_Access (This.getParent)).onHashMap (This.hashMap);
            This.setVisible (False);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("jButton1ActionPerformed"));
                end;
        end;
   end jButton1ActionPerformed;

   procedure main (args : Unbounded_String_Array_Access) is
   begin
        java_Package.awt.EventQueue.invokeLater (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        dialog : RotateJDialog_Access;
--     begin
--                  dialog := RotateJDialog_Package.Create (JFrame_Package.Create, True);
--                  dialog.addWindowListener (WindowAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--  --                      
--  --     procedure windowClosing (This : in out ; e : WindowEvent_Access) is
--  --     begin
--  --                          System_Package.exit_Id (0);
--  --     end windowClosing;
--  );
--                  dialog.setVisible (True);
--     end run;
);
   end main;

end org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;



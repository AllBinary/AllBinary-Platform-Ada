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


package body org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package is

   procedure Initialize_Fields (This : in out TimeIntervalActionScriptConditionJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.okJButton := null;
      This.timeIntervalActionJButton := null;
      This.timeIntervalActionJDialog := null;
      This.timeIntervalJTextField := null;
      This.titleJLabel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TimeIntervalActionScriptConditionJPanel'Class; timeIntervalActionScriptConditionInterface_Param : access TimeIntervalActionScriptConditionInterface'Class) is
      timeIntervalActionScriptConditionInterface : TimeIntervalActionScriptConditionInterface_Access := TimeIntervalActionScriptConditionInterface_Access (timeIntervalActionScriptConditionInterface_Param);
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, TimeIntervalActionScriptConditionJPanel_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.initComponents;
        This.timeIntervalActionScriptConditionInterface := timeIntervalActionScriptConditionInterface;
        This.set;
   end Initialize;

   function Create (timeIntervalActionScriptConditionInterface_Param : access TimeIntervalActionScriptConditionInterface'Class) return TimeIntervalActionScriptConditionJPanel_Access is
      This : constant TimeIntervalActionScriptConditionJPanel_Access := new TimeIntervalActionScriptConditionJPanel;
   begin
      TimeIntervalActionScriptConditionJPanel_Package.Initialize (This.all, timeIntervalActionScriptConditionInterface_Param);
      return This;
   end Create;

   procedure set (This : in out TimeIntervalActionScriptConditionJPanel) is
   begin
        This.getTimeIntervalJTextField.setText (To_Unbounded_String (Java_Image (This.timeIntervalActionScriptConditionInterface.getTimeDelayHelper.delay_Id)));
        This.timeIntervalActionScriptConditionInterface.log;
   end set;

   procedure update (This : in out TimeIntervalActionScriptConditionJPanel) is
   begin
        This.timeIntervalActionScriptConditionInterface.getTimeDelayHelper.delay_Id := To_Unbounded_String (Java_Image (This.getTimeIntervalJTextField.getText));
        This.timeIntervalActionScriptConditionInterface.log;
   end update;

   function getTimeIntervalJTextField (This : in out TimeIntervalActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.timeIntervalJTextField;
   end getTimeIntervalJTextField;

   procedure setTimeIntervalJTextField (This : in out TimeIntervalActionScriptConditionJPanel; timeIntervalJTextField_Param : access JTextField'Class) is
      timeIntervalJTextField : JTextField_Access := JTextField_Access (timeIntervalJTextField_Param);
   begin
        This.timeIntervalJTextField := timeIntervalJTextField;
   end setTimeIntervalJTextField;

   function getTimeIntervalActionJDialog (This : in out TimeIntervalActionScriptConditionJPanel) return JDialog_Access is
   begin
        return This.timeIntervalActionJDialog;
   end getTimeIntervalActionJDialog;

   procedure setTimeIntervalActionJDialog (This : in out TimeIntervalActionScriptConditionJPanel; timeIntervalActionJDialog_Param : access JDialog'Class) is
      timeIntervalActionJDialog : JDialog_Access := JDialog_Access (timeIntervalActionJDialog_Param);
   begin
        This.timeIntervalActionJDialog := timeIntervalActionJDialog;
   end setTimeIntervalActionJDialog;

   procedure initComponents (This : in out TimeIntervalActionScriptConditionJPanel) is
      timeIntervalActionJDialogLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.timeIntervalActionJDialog := JDialog_Package.Create;
        This.titleJLabel := JLabel_Package.Create;
        This.okJButton := JButton_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        This.timeIntervalJTextField := JTextField_Package.Create;
        This.timeIntervalActionJButton := JButton_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.timeIntervalActionJDialog.setMinimumSize (Dimension_Package.Create (250, 150));
        This.titleJLabel.setText (To_Unbounded_String ("Time Interval Condition Options"));
        This.okJButton.setText (To_Unbounded_String ("OK"));
        This.okJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.okJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel2.setText (To_Unbounded_String ("Time (ms):"));
        timeIntervalActionJDialogLayout := GroupLayout_Package.Create (This.timeIntervalActionJDialog.getContentPane);
        This.timeIntervalActionJDialog.getContentPane.setLayout (timeIntervalActionJDialogLayout);
        timeIntervalActionJDialogLayout.setHorizontalGroup (timeIntervalActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (timeIntervalActionJDialogLayout.createSequentialGroup.addGroup (timeIntervalActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING).addGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, timeIntervalActionJDialogLayout.createSequentialGroup.addGap (82, 82, 82).addComponent (This.okJButton)).addGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, timeIntervalActionJDialogLayout.createSequentialGroup.addGap (32, 32, 32).addGroup (timeIntervalActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (timeIntervalActionJDialogLayout.createSequentialGroup.addComponent (This.jLabel2).addGap (16, 16, 16).addComponent (This.timeIntervalJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 85, Short_Package.MAX_VALUE)).addComponent (This.titleJLabel)))).addContainerGap (36, Short_Package.MAX_VALUE)));
        timeIntervalActionJDialogLayout.setVerticalGroup (timeIntervalActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (timeIntervalActionJDialogLayout.createSequentialGroup.addContainerGap.addComponent (This.titleJLabel).addGap (20, 20, 20).addGroup (timeIntervalActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel2).addComponent (This.timeIntervalJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addGap (15, 15, 15).addComponent (This.okJButton).addContainerGap));
        This.setMinimumSize (Dimension_Package.Create (100, 0));
        This.timeIntervalActionJButton.setText (To_Unbounded_String ("Edit"));
        This.timeIntervalActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.timeIntervalActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel1.setText (To_Unbounded_String ("Time Interval:"));
        layout := GroupLayout_Package.Create (TimeIntervalActionScriptConditionJPanel_Access'(This'Unchecked_Access));
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jLabel1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addComponent (This.timeIntervalActionJButton)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.timeIntervalActionJButton)));
   end initComponents;

   procedure okJButtonActionPerformed (This : in out TimeIntervalActionScriptConditionJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.update;
        This.getTimeIntervalActionJDialog.setVisible (False);
   end okJButtonActionPerformed;

   procedure timeIntervalActionJButtonActionPerformed (This : in out TimeIntervalActionScriptConditionJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.getTimeIntervalActionJDialog.setVisible (True);
   end timeIntervalActionJButtonActionPerformed;

end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package;



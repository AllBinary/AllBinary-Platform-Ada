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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package is

   procedure Initialize_Fields (This : in out GenericProfileActionJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.genericProfileAction := null;
      This.genericProfileActionScriptJPanel := null;
      This.blankProfileActionScriptJPanel := null;
      This.genericProfileActionScriptJScrollPane := null;
      This.ifJLabel := null;
      This.newAlwaysJButton := null;
      This.newColorAtJButton := null;
      This.newTimeIntervalJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileActionJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create return GenericProfileActionJPanel_Access is
      This : constant GenericProfileActionJPanel_Access := new GenericProfileActionJPanel;
   begin
      GenericProfileActionJPanel_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateProfileActionUI (This : in out GenericProfileActionJPanel) is
      genericProfileActionScriptJPanel : GenericProfileActionScriptJPanel_Access;
      layout : GroupLayout_Access;
   begin
        This.blankProfileActionScriptJPanel.removeAll;
        genericProfileActionScriptJPanel := GenericProfileActionScriptJPanel_Package.Create;
        JTreeInterfaceFactory_Package.getInstance.set (genericProfileActionScriptJPanel);
        This.setGenericProfileActionScriptJPanel (genericProfileActionScriptJPanel);
        This.getGenericProfileActionScriptJPanel.setGenericProfileActionScript (This.getGenericProfileAction.getGenericProfileActionScript);
        This.getGenericProfileActionScriptJPanel.updateJTree;
        layout := GroupLayout_Access (This.blankProfileActionScriptJPanel.getLayout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 395, Short_Package.MAX_VALUE).addComponent (This.getGenericProfileActionScriptJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 256, Short_Package.MAX_VALUE).addComponent (This.getGenericProfileActionScriptJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
        This.logUtil.putF (To_Unbounded_String ("Updated UI"), This'Unchecked_Access, To_Unbounded_String ("updateUI"));
   end updateProfileActionUI;

   function getGenericProfileAction (This : in out GenericProfileActionJPanel) return GenericProfileAction_Access is
   begin
        return This.genericProfileAction;
   end getGenericProfileAction;

   procedure setGenericProfileAction (This : in out GenericProfileActionJPanel; genericProfileAction : GenericProfileAction_Access) is
   begin
        This.genericProfileAction := genericProfileAction;
   end setGenericProfileAction;

   function getGenericProfileActionScriptJPanel (This : in out GenericProfileActionJPanel) return GenericProfileActionScriptJPanel_Access is
   begin
        return This.genericProfileActionScriptJPanel;
   end getGenericProfileActionScriptJPanel;

   procedure setGenericProfileActionScriptJPanel (This : in out GenericProfileActionJPanel; genericProfileActionScriptJPanel : GenericProfileActionScriptJPanel_Access) is
   begin
        This.genericProfileActionScriptJPanel := genericProfileActionScriptJPanel;
   end setGenericProfileActionScriptJPanel;

   procedure initComponents (This : in out GenericProfileActionJPanel) is
      blankProfileActionScriptJPanelLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.genericProfileActionScriptJScrollPane := JScrollPane_Package.Create;
        This.blankProfileActionScriptJPanel := JPanel_Package.Create;
        This.ifJLabel := JLabel_Package.Create;
        This.newColorAtJButton := JButton_Package.Create;
        This.newTimeIntervalJButton := JButton_Package.Create;
        This.newAlwaysJButton := JButton_Package.Create;
        This.setMinimumSize (Dimension_Package.Create (440, 275));
        This.setPreferredSize (Dimension_Package.Create (440, 275));
        This.genericProfileActionScriptJScrollPane.setPreferredSize (Dimension_Package.Create (474, 270));
        This.blankProfileActionScriptJPanel.setMinimumSize (Dimension_Package.Create (400, 200));
        blankProfileActionScriptJPanelLayout := GroupLayout_Package.Create (This.blankProfileActionScriptJPanel);
        This.blankProfileActionScriptJPanel.setLayout (blankProfileActionScriptJPanelLayout);
        blankProfileActionScriptJPanelLayout.setHorizontalGroup (blankProfileActionScriptJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 9996, Short_Package.MAX_VALUE));
        blankProfileActionScriptJPanelLayout.setVerticalGroup (blankProfileActionScriptJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 9967, Short_Package.MAX_VALUE));
        This.genericProfileActionScriptJScrollPane.setViewportView (This.blankProfileActionScriptJPanel);
        This.ifJLabel.setText (To_Unbounded_String ("Conditions:"));
        This.newColorAtJButton.setText (To_Unbounded_String ("Color Range At"));
        This.newColorAtJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.newColorAtJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.newTimeIntervalJButton.setText (To_Unbounded_String ("Time Interval"));
        This.newTimeIntervalJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.newTimeIntervalJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.newAlwaysJButton.setText (To_Unbounded_String ("Always On/Off"));
        This.newAlwaysJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.newAlwaysJButtonActionPerformed (evt);
--     end actionPerformed;
);
        layout := GroupLayout_Package.Create (This'Unchecked_Access);
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.ifJLabel).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.newColorAtJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.newTimeIntervalJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.newAlwaysJButton).addContainerGap (61, Short_Package.MAX_VALUE)).addComponent (This.genericProfileActionScriptJScrollPane, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 440, Short_Package.MAX_VALUE));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.ifJLabel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 14, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.newColorAtJButton).addComponent (This.newTimeIntervalJButton).addComponent (This.newAlwaysJButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.genericProfileActionScriptJScrollPane, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 246, Short_Package.MAX_VALUE)));
   end initComponents;

   procedure newTimeIntervalJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt : ActionEvent_Access) is
   begin
        This.logUtil.putF (To_Unbounded_String ("New Time Interval Action Condition"), This'Unchecked_Access, To_Unbounded_String ("newTimeIntervalJButtonActionPerformed"));
        This.getGenericProfileAction.getGenericProfileActionScript.addCondition (ProfileActionScriptConditionInterface_Access (TimeIntervalActionScriptCondition_Package.Create));
        This.updateProfileActionUI;
   end newTimeIntervalJButtonActionPerformed;

   procedure newAlwaysJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt : ActionEvent_Access) is
   begin
        This.logUtil.putF (To_Unbounded_String ("New EveryTime Action Condition"), This'Unchecked_Access, To_Unbounded_String ("newEveryTimeJButtonActionPerformed"));
        This.getGenericProfileAction.getGenericProfileActionScript.addCondition (ProfileActionScriptConditionInterface_Access (AlwaysActionScriptCondition_Package.Create));
        This.updateProfileActionUI;
   end newAlwaysJButtonActionPerformed;

   procedure newColorAtJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt : ActionEvent_Access) is
   begin
        This.logUtil.putF (To_Unbounded_String ("New Color At Action Condition"), This'Unchecked_Access, To_Unbounded_String ("newColorAtJButtonActionPerformed"));
        This.getGenericProfileAction.getGenericProfileActionScript.addCondition (ProfileActionScriptConditionInterface_Access (ColorAtActionScriptCondition_Package.Create));
        This.updateProfileActionUI;
   end newColorAtJButtonActionPerformed;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;



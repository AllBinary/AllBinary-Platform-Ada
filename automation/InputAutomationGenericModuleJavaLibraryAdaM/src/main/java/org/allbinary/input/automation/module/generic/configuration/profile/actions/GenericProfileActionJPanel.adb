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


with org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package; use org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;

package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package is

   package JTreeInterfaceFactory_Package renames Standard.org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
   package AlwaysActionScriptCondition_Package renames Standard.org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
   package ColorAtActionScriptCondition_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;
   package ProfileActionScriptConditionInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
   package TimeIntervalActionScriptCondition_Package renames Standard.org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
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
        GenericProfileActionJPanel'Class (This).initComponents;
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
        GenericProfileActionJPanel'Class (This).setGenericProfileActionScriptJPanel (genericProfileActionScriptJPanel);
        GenericProfileActionJPanel'Class (This).getGenericProfileActionScriptJPanel.setGenericProfileActionScript (GenericProfileActionJPanel'Class (This).getGenericProfileAction.getGenericProfileActionScript);
        GenericProfileActionJPanel'Class (This).getGenericProfileActionScriptJPanel.updateJTree;
        layout := GroupLayout_Access (This.blankProfileActionScriptJPanel.getLayout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 395, Short_Integer'Last).addComponent (GenericProfileActionJPanel'Class (This).getGenericProfileActionScriptJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 256, Short_Integer'Last).addComponent (GenericProfileActionJPanel'Class (This).getGenericProfileActionScriptJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
        This.logUtil.putF (To_Unbounded_String ("Updated UI"), GenericProfileActionJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateUI"));
   end updateProfileActionUI;

   function getGenericProfileAction (This : in out GenericProfileActionJPanel) return GenericProfileAction_Access is
   begin
        return This.genericProfileAction;
   end getGenericProfileAction;

   procedure setGenericProfileAction (This : in out GenericProfileActionJPanel; genericProfileAction_Param : access GenericProfileAction_Package.GenericProfileAction'Class) is
      genericProfileAction : constant GenericProfileAction_Access := GenericProfileAction_Access (genericProfileAction_Param);
   begin
        This.genericProfileAction := genericProfileAction;
   end setGenericProfileAction;

   function getGenericProfileActionScriptJPanel (This : in out GenericProfileActionJPanel) return GenericProfileActionScriptJPanel_Access is
   begin
        return This.genericProfileActionScriptJPanel;
   end getGenericProfileActionScriptJPanel;

   procedure setGenericProfileActionScriptJPanel (This : in out GenericProfileActionJPanel; genericProfileActionScriptJPanel_Param : access GenericProfileActionScriptJPanel_Package.GenericProfileActionScriptJPanel'Class) is
      genericProfileActionScriptJPanel : constant GenericProfileActionScriptJPanel_Access := GenericProfileActionScriptJPanel_Access (genericProfileActionScriptJPanel_Param);
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
        GenericProfileActionJPanel'Class (This).setMinimumSize (Dimension_Package.Create (440, 275));
        GenericProfileActionJPanel'Class (This).setPreferredSize (Dimension_Package.Create (440, 275));
        This.genericProfileActionScriptJScrollPane.setPreferredSize (Dimension_Package.Create (474, 270));
        This.blankProfileActionScriptJPanel.setMinimumSize (Dimension_Package.Create (400, 200));
        blankProfileActionScriptJPanelLayout := GroupLayout_Package.Create (This.blankProfileActionScriptJPanel);
        This.blankProfileActionScriptJPanel.setLayout (blankProfileActionScriptJPanelLayout);
        blankProfileActionScriptJPanelLayout.setHorizontalGroup (blankProfileActionScriptJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 9996, Short_Integer'Last));
        blankProfileActionScriptJPanelLayout.setVerticalGroup (blankProfileActionScriptJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 9967, Short_Integer'Last));
        This.genericProfileActionScriptJScrollPane.setViewportView (This.blankProfileActionScriptJPanel);
        This.ifJLabel.setText (To_Unbounded_String ("Conditions:"));
        This.newColorAtJButton.setText (To_Unbounded_String ("Color Range At"));
        This.newColorAtJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericProfileActionJPanel'Class (This).newColorAtJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.newTimeIntervalJButton.setText (To_Unbounded_String ("Time Interval"));
        This.newTimeIntervalJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericProfileActionJPanel'Class (This).newTimeIntervalJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.newAlwaysJButton.setText (To_Unbounded_String ("Always On/Off"));
        This.newAlwaysJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericProfileActionJPanel'Class (This).newAlwaysJButtonActionPerformed (evt);
--     end actionPerformed;
);
        layout := GroupLayout_Package.Create (GenericProfileActionJPanel_Access'(This'Unchecked_Access));
        GenericProfileActionJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.ifJLabel).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.newColorAtJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.newTimeIntervalJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.newAlwaysJButton).addContainerGap (61, Short_Integer'Last)).addComponent (This.genericProfileActionScriptJScrollPane, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 440, Short_Integer'Last));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.ifJLabel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 14, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.newColorAtJButton).addComponent (This.newTimeIntervalJButton).addComponent (This.newAlwaysJButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.genericProfileActionScriptJScrollPane, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 246, Short_Integer'Last)));
   end initComponents;

   procedure newTimeIntervalJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("New Time Interval Action Condition"), GenericProfileActionJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("newTimeIntervalJButtonActionPerformed"));
        GenericProfileActionJPanel'Class (This).getGenericProfileAction.getGenericProfileActionScript.addCondition (ProfileActionScriptConditionInterface_Access (TimeIntervalActionScriptCondition_Package.Create));
        GenericProfileActionJPanel'Class (This).updateProfileActionUI;
   end newTimeIntervalJButtonActionPerformed;

   procedure newAlwaysJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("New EveryTime Action Condition"), GenericProfileActionJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("newEveryTimeJButtonActionPerformed"));
        GenericProfileActionJPanel'Class (This).getGenericProfileAction.getGenericProfileActionScript.addCondition (ProfileActionScriptConditionInterface_Access (AlwaysActionScriptCondition_Package.Create));
        GenericProfileActionJPanel'Class (This).updateProfileActionUI;
   end newAlwaysJButtonActionPerformed;

   procedure newColorAtJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("New Color At Action Condition"), GenericProfileActionJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("newColorAtJButtonActionPerformed"));
        GenericProfileActionJPanel'Class (This).getGenericProfileAction.getGenericProfileActionScript.addCondition (ProfileActionScriptConditionInterface_Access (ColorAtActionScriptCondition_Package.Create));
        GenericProfileActionJPanel'Class (This).updateProfileActionUI;
   end newColorAtJButtonActionPerformed;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;



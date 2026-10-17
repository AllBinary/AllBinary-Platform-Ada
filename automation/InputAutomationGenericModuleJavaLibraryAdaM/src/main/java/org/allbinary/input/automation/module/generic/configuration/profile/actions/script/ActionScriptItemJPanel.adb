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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package is

   procedure Initialize_Fields (This : in out ActionScriptItemJPanel'Class) is
   begin
      null;
      This.childActionScriptConditionJPanel := null;
      This.newActionScriptConditionJPanel := null;
      This.newActionScriptInputJPanel := null;
      This.removeJPanel := null;
      This.scriptItemJPanel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ActionScriptItemJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create return ActionScriptItemJPanel_Access is
      This : constant ActionScriptItemJPanel_Access := new ActionScriptItemJPanel;
   begin
      ActionScriptItemJPanel_Package.Initialize (This.all);
      return This;
   end Create;

   function getNewActionScriptInputJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access is
   begin
        return This.newActionScriptInputJPanel;
   end getNewActionScriptInputJPanel;

   procedure setNewActionScriptInputJPanel (This : in out ActionScriptItemJPanel; newActionScriptInputJPanel : JPanel_Access) is
   begin
        This.newActionScriptInputJPanel := newActionScriptInputJPanel;
   end setNewActionScriptInputJPanel;

   function getRemoveJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access is
   begin
        return This.removeJPanel;
   end getRemoveJPanel;

   procedure setRemoveJPanel (This : in out ActionScriptItemJPanel; removeJPanel : JPanel_Access) is
   begin
        This.removeJPanel := removeJPanel;
   end setRemoveJPanel;

   function getScriptItemJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access is
   begin
        return This.scriptItemJPanel;
   end getScriptItemJPanel;

   procedure setScriptItemJPanel (This : in out ActionScriptItemJPanel; scriptItemJPanel : JPanel_Access) is
   begin
        This.scriptItemJPanel := scriptItemJPanel;
   end setScriptItemJPanel;

   function getNewActionScriptConditionJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access is
   begin
        return This.newActionScriptConditionJPanel;
   end getNewActionScriptConditionJPanel;

   procedure setNewActionScriptConditionJPanel (This : in out ActionScriptItemJPanel; newActionScriptConditionJPanel : JPanel_Access) is
   begin
        This.newActionScriptConditionJPanel := newActionScriptConditionJPanel;
   end setNewActionScriptConditionJPanel;

   function getChildActionScriptConditionJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access is
   begin
        return This.childActionScriptConditionJPanel;
   end getChildActionScriptConditionJPanel;

   procedure setChildActionScriptConditionJPanel (This : in out ActionScriptItemJPanel; childActionScriptConditionJPanel : JPanel_Access) is
   begin
        This.childActionScriptConditionJPanel := childActionScriptConditionJPanel;
   end setChildActionScriptConditionJPanel;

   procedure initComponents (This : in out ActionScriptItemJPanel) is
      childActionScriptConditionJPanelLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.newActionScriptInputJPanel := JPanel_Package.Create;
        This.childActionScriptConditionJPanel := JPanel_Package.Create;
        This.newActionScriptConditionJPanel := JPanel_Package.Create;
        This.scriptItemJPanel := JPanel_Package.Create;
        This.removeJPanel := JPanel_Package.Create;
        This.newActionScriptInputJPanel.setLayout (GridLayout_Package.Create (1, 0));
        childActionScriptConditionJPanelLayout := GroupLayout_Package.Create (This.childActionScriptConditionJPanel);
        This.childActionScriptConditionJPanel.setLayout (childActionScriptConditionJPanelLayout);
        childActionScriptConditionJPanelLayout.setHorizontalGroup (childActionScriptConditionJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 229, Short_Package.MAX_VALUE));
        childActionScriptConditionJPanelLayout.setVerticalGroup (childActionScriptConditionJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 8, Short_Package.MAX_VALUE));
        This.newActionScriptConditionJPanel.setLayout (GridLayout_Package.Create (1, 0));
        This.scriptItemJPanel.setLayout (GridLayout_Package.Create (1, 1));
        This.removeJPanel.setLayout (GridLayout_Package.Create (1, 1));
        This.removeJPanel.setMinimumSize (Dimension_Package.Create (30, 20));
        layout := GroupLayout_Package.Create (This'Unchecked_Access);
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.scriptItemJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 167, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.removeJPanel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 56, Short_Package.MAX_VALUE)).addComponent (This.newActionScriptInputJPanel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 229, Short_Package.MAX_VALUE).addComponent (This.newActionScriptConditionJPanel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 229, Short_Package.MAX_VALUE).addComponent (This.childActionScriptConditionJPanel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.scriptItemJPanel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 31, Short_Package.MAX_VALUE).addComponent (This.removeJPanel, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 31, Short_Package.MAX_VALUE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.childActionScriptConditionJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.newActionScriptConditionJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 28, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.newActionScriptInputJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 30, javax_Package.swing.GroupLayout.PREFERRED_SIZE)));
   end initComponents;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package;



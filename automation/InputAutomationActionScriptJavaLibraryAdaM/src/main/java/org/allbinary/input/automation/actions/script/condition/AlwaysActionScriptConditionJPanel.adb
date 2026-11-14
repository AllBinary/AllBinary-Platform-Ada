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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;

package body org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package is

   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype AlwaysActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   subtype AlwaysActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   subtype AlwaysActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   subtype AlwaysActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   subtype AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   procedure Initialize_Fields (This : in out AlwaysActionScriptConditionJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.alwaysActionJButton := null;
      This.alwaysActionJDialog := null;
      This.alwaysJComboBox := null;
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.okJButton := null;
      This.titleJLabel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AlwaysActionScriptConditionJPanel'Class; alwaysActionScriptConditionInterface_Param : access AlwaysActionScriptConditionInterface_Package.AlwaysActionScriptConditionInterface'Class) is
      alwaysActionScriptConditionInterface : constant AlwaysActionScriptConditionInterface_Access := AlwaysActionScriptConditionInterface_Access (alwaysActionScriptConditionInterface_Param);
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, AlwaysActionScriptConditionJPanel_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        AlwaysActionScriptConditionJPanel'Class (This).initComponents;
        This.alwaysActionScriptConditionInterface := alwaysActionScriptConditionInterface;
        AlwaysActionScriptConditionJPanel'Class (This).set;
   end Initialize;

   function Create (alwaysActionScriptConditionInterface_Param : access AlwaysActionScriptConditionInterface_Package.AlwaysActionScriptConditionInterface'Class) return AlwaysActionScriptConditionJPanel_Access is
      This : constant AlwaysActionScriptConditionJPanel_Access := new AlwaysActionScriptConditionJPanel;
   begin
      AlwaysActionScriptConditionJPanel_Package.Initialize (This.all, alwaysActionScriptConditionInterface_Param);
      return This;
   end Create;

   procedure set (This : in out AlwaysActionScriptConditionJPanel) is
   begin
        if This.alwaysActionScriptConditionInterface.isIsOn then
            This.alwaysJComboBox.setSelectedIndex (0);
        else
            This.alwaysJComboBox.setSelectedIndex (1);
        end if;
        This.alwaysActionScriptConditionInterface.log;
   end set;

   procedure update (This : in out AlwaysActionScriptConditionJPanel) is
   begin
        if (This.alwaysJComboBox.getSelectedIndex) = (0) then
            This.alwaysActionScriptConditionInterface.setIsOn (True);
        else
            This.alwaysActionScriptConditionInterface.setIsOn (False);
        end if;
        This.alwaysActionScriptConditionInterface.log;
   end update;

   function getAlwaysActionJDialog (This : in out AlwaysActionScriptConditionJPanel) return JDialog_Access is
   begin
        return This.alwaysActionJDialog;
   end getAlwaysActionJDialog;

   procedure setAlwaysActionJDialog (This : in out AlwaysActionScriptConditionJPanel; alwaysActionJDialog_Param : access JDialog_Package.JDialog'Class) is
      alwaysActionJDialog : constant JDialog_Access := JDialog_Access (alwaysActionJDialog_Param);
   begin
        This.alwaysActionJDialog := alwaysActionJDialog;
   end setAlwaysActionJDialog;

   procedure initComponents (This : in out AlwaysActionScriptConditionJPanel) is
      alwaysActionJDialogLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.alwaysActionJDialog := JDialog_Package.Create;
        This.titleJLabel := JLabel_Package.Create;
        This.okJButton := JButton_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        This.alwaysJComboBox := JComboBox_Package.Create;
        This.alwaysActionJButton := JButton_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.alwaysActionJDialog.setMinimumSize (Dimension_Package.Create (250, 150));
        This.titleJLabel.setText (To_Unbounded_String ("Always Condition Options"));
        This.okJButton.setText (To_Unbounded_String ("OK"));
        This.okJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  AlwaysActionScriptConditionJPanel'Class (This).okJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel2.setText (To_Unbounded_String ("On:"));
        This.alwaysJComboBox.setModel (DefaultComboBoxModel_Package.Create (new Unbounded_String_Array'(To_Unbounded_String ("true"), To_Unbounded_String ("false"))));
        alwaysActionJDialogLayout := GroupLayout_Package.Create (This.alwaysActionJDialog.getContentPane);
        This.alwaysActionJDialog.getContentPane.setLayout (alwaysActionJDialogLayout);
        alwaysActionJDialogLayout.setHorizontalGroup (alwaysActionJDialogLayout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (alwaysActionJDialogLayout.createSequentialGroup.addGroup (alwaysActionJDialogLayout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (alwaysActionJDialogLayout.createSequentialGroup.addGap (47, 47, 47).addGroup (alwaysActionJDialogLayout.createParallelGroup (GroupLayout_Package.Alignment.LEADING, False).addGroup (GroupLayout_Package.Alignment.TRAILING, alwaysActionJDialogLayout.createSequentialGroup.addComponent (This.jLabel2).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED, GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last).addComponent (This.alwaysJComboBox, GroupLayout_Package.PREFERRED_SIZE, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.PREFERRED_SIZE)).addComponent (This.titleJLabel))).addGroup (alwaysActionJDialogLayout.createSequentialGroup.addGap (79, 79, 79).addComponent (This.okJButton))).addContainerGap (45, Short_Integer'Last)));
        alwaysActionJDialogLayout.setVerticalGroup (alwaysActionJDialogLayout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (alwaysActionJDialogLayout.createSequentialGroup.addContainerGap.addComponent (This.titleJLabel).addGap (20, 20, 20).addGroup (alwaysActionJDialogLayout.createParallelGroup (GroupLayout_Package.Alignment.BASELINE).addComponent (This.alwaysJComboBox, GroupLayout_Package.PREFERRED_SIZE, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.PREFERRED_SIZE).addComponent (This.jLabel2)).addGap (15, 15, 15).addComponent (This.okJButton).addContainerGap));
        AlwaysActionScriptConditionJPanel'Class (This).setMinimumSize (Dimension_Package.Create (100, 0));
        This.alwaysActionJButton.setText (To_Unbounded_String ("Edit"));
        This.alwaysActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  AlwaysActionScriptConditionJPanel'Class (This).alwaysActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel1.setText (To_Unbounded_String ("Always:"));
        layout := GroupLayout_Package.Create (AlwaysActionScriptConditionJPanel_Access'(This'Unchecked_Access));
        AlwaysActionScriptConditionJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jLabel1).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED, 33, Short_Integer'Last).addComponent (This.alwaysActionJButton)));
        layout.setVerticalGroup (layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (layout.createParallelGroup (GroupLayout_Package.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.alwaysActionJButton)));
   end initComponents;

   procedure okJButtonActionPerformed (This : in out AlwaysActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        AlwaysActionScriptConditionJPanel'Class (This).update;
        AlwaysActionScriptConditionJPanel'Class (This).getAlwaysActionJDialog.setVisible (False);
   end okJButtonActionPerformed;

   procedure alwaysActionJButtonActionPerformed (This : in out AlwaysActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        AlwaysActionScriptConditionJPanel'Class (This).getAlwaysActionJDialog.setVisible (True);
   end alwaysActionJButtonActionPerformed;

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package;



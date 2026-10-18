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


with org.allbinary.input.KeySingletonFactory_Package; use org.allbinary.input.KeySingletonFactory_Package;
with org.allbinary.input.automation.robot.InputRobot_Package; use org.allbinary.input.automation.robot.InputRobot_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.TempInputRobotNames_Package; use org.allbinary.input.automation.robot.TempInputRobotNames_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.ComboBoxModel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.ComboBoxModel_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package is

   package KeySingletonFactory_Package renames Standard.org.allbinary.input.KeySingletonFactory_Package;
   package InputRobot_Package renames Standard.org.allbinary.input.automation.robot.InputRobot_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package TempInputRobotNames_Package renames Standard.org.allbinary.input.automation.robot.TempInputRobotNames_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   procedure Initialize_Fields (This : in out KeyboardActionScriptInputJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.addKeyJLabel := null;
      This.delayBetweenJLabel := null;
      This.delayJTextField := null;
      This.holdTimeJLabel := null;
      This.inputAutomationTypeJComboBox := null;
      This.inputTypeJLabel := null;
      This.jLabel1 := null;
      This.jPanel1 := null;
      This.keyActionJButton := null;
      This.keyActionJDialog := null;
      This.keyIntegerJComboBox := null;
      This.keyNameJComboBox := null;
      This.normalJRadioButton := null;
      This.okJButton := null;
      This.pressJRadioButton := null;
      This.releaseJRadioButton := null;
      This.sequenceJRadioButton := null;
      This.simultaneousJRadioButton := null;
      This.testJLabel := null;
      This.textJTextField := null;
      This.timeJTextField := null;
      This.titleJLabel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyboardActionScriptInputJPanel'Class; keyActionScriptInputInterface_Param : access KeyboardActionScriptInputInterface_Package.KeyboardActionScriptInputInterface'Class) is
      keyActionScriptInputInterface : constant KeyboardActionScriptInputInterface_Access := KeyboardActionScriptInputInterface_Access (keyActionScriptInputInterface_Param);
      defaultComboBoxModel : DefaultComboBoxModel_Access;
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, KeyboardActionScriptInputJPanel_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        KeyboardActionScriptInputJPanel'Class (This).initComponents;
        This.keyActionScriptInputInterface := keyActionScriptInputInterface;
        defaultComboBoxModel := DefaultComboBoxModel_Package.Create;
        defaultComboBoxModel.addElement (TempInputRobotNames_Package.DX_NAME);
        defaultComboBoxModel.addElement (InputRobot_Package.NAME);
        This.inputAutomationTypeJComboBox.setModel (defaultComboBoxModel);
        This.keyNameJComboBox.setModel (KeyNameDefaultComboBoxModelFactory_Package.getInstance);
        This.keyIntegerJComboBox.setModel (KeyCharDefaultComboBoxModelFactory_Package.getInstance);
        if This.keyActionScriptInputInterface.isNormal then
            This.normalJRadioButton.setSelected (True);
            This.pressJRadioButton.setSelected (False);
            This.releaseJRadioButton.setSelected (False);
        elsif This.keyActionScriptInputInterface.isPress then
            This.normalJRadioButton.setSelected (False);
            This.pressJRadioButton.setSelected (True);
            This.releaseJRadioButton.setSelected (False);
        elsif This.keyActionScriptInputInterface.isRelease then
            This.normalJRadioButton.setSelected (False);
            This.pressJRadioButton.setSelected (False);
            This.releaseJRadioButton.setSelected (True);
        end if;
        KeyboardActionScriptInputJPanel'Class (This).set;
   end Initialize;

   function Create (keyActionScriptInputInterface_Param : access KeyboardActionScriptInputInterface_Package.KeyboardActionScriptInputInterface'Class) return KeyboardActionScriptInputJPanel_Access is
      This : constant KeyboardActionScriptInputJPanel_Access := new KeyboardActionScriptInputJPanel;
   begin
      KeyboardActionScriptInputJPanel_Package.Initialize (This.all, keyActionScriptInputInterface_Param);
      return This;
   end Create;

   procedure set (This : in out KeyboardActionScriptInputJPanel) is
      inputTypeComboBoxModel : ComboBoxModel_Access;
   begin
        inputTypeComboBoxModel := This.inputAutomationTypeJComboBox.getModel;
        inputTypeComboBoxModel.setSelectedItem (This.keyActionScriptInputInterface.getInputRobotInterface.getName);
        This.textJTextField.setText (This.keyActionScriptInputInterface.getText);
        This.delayJTextField.setText (To_Unbounded_String (Java_Image (This.keyActionScriptInputInterface.getDelayBetweenKeys)));
        This.timeJTextField.setText (To_Unbounded_String (Java_Image (This.keyActionScriptInputInterface.getTime)));
        This.keyActionScriptInputInterface.log;
   end set;

   --  throws Exception
   procedure updateInputType (This : in out KeyboardActionScriptInputJPanel) is
      comboBoxModel : ComboBoxModel_Access;
      selectedItem : Unbounded_String;
   begin
        comboBoxModel := This.inputAutomationTypeJComboBox.getModel;
        selectedItem := Java_Unbox (comboBoxModel.getSelectedItem);
        if not (StringValidationUtil_Package.getInstance.isEmpty (selectedItem)) then
            This.keyActionScriptInputInterface.setInputRobotInterface (InputRobotFactory_Package.getInstance.get (selectedItem));
        end if;
   end updateInputType;

   function getSelectedKey (This : in out KeyboardActionScriptInputJPanel) return Integer is
      comboBoxModel : ComboBoxModel_Access;
      selectedItem : Unbounded_String;
   begin
        comboBoxModel := This.keyNameJComboBox.getModel;
        selectedItem := Java_Unbox (comboBoxModel.getSelectedItem);
        if not (StringValidationUtil_Package.getInstance.isEmpty (selectedItem)) then
            return Integer (KeySingletonFactory_Package.getHashtable.get (selectedItem));
        end if;
        return null;
   end getSelectedKey;

   procedure updateKeys (This : in out KeyboardActionScriptInputJPanel) is
      text : Unbounded_String;
   begin
        text := This.textJTextField.getText;
        This.keyActionScriptInputInterface.setText (text);
   end updateKeys;

   --  throws Exception
   procedure update (This : in out KeyboardActionScriptInputJPanel) is
   begin
        KeyboardActionScriptInputJPanel'Class (This).updateInputType;
        KeyboardActionScriptInputJPanel'Class (This).updateKeys;
        This.keyActionScriptInputInterface.setTime (To_Unbounded_String (Java_Image (This.timeJTextField.getText)).intValue);
        This.keyActionScriptInputInterface.log;
   end update;

   function getKeyActionJDialog (This : in out KeyboardActionScriptInputJPanel) return JDialog_Access is
   begin
        return This.keyActionJDialog;
   end getKeyActionJDialog;

   procedure setKeyActionJDialog (This : in out KeyboardActionScriptInputJPanel; keyActionJDialog_Param : access JDialog_Package.JDialog'Class) is
      keyActionJDialog : constant JDialog_Access := JDialog_Access (keyActionJDialog_Param);
   begin
        This.keyActionJDialog := keyActionJDialog;
   end setKeyActionJDialog;

   procedure initComponents (This : in out KeyboardActionScriptInputJPanel) is
      keyActionJDialogLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.keyActionJDialog := JDialog_Package.Create;
        This.titleJLabel := JLabel_Package.Create;
        This.addKeyJLabel := JLabel_Package.Create;
        This.keyNameJComboBox := JComboBox_Package.Create;
        This.timeJTextField := JTextField_Package.Create;
        This.holdTimeJLabel := JLabel_Package.Create;
        This.inputAutomationTypeJComboBox := JComboBox_Package.Create;
        This.inputTypeJLabel := JLabel_Package.Create;
        This.delayJTextField := JTextField_Package.Create;
        This.delayBetweenJLabel := JLabel_Package.Create;
        This.testJLabel := JLabel_Package.Create;
        This.textJTextField := JTextField_Package.Create;
        This.pressJRadioButton := JRadioButton_Package.Create;
        This.releaseJRadioButton := JRadioButton_Package.Create;
        This.normalJRadioButton := JRadioButton_Package.Create;
        This.simultaneousJRadioButton := JRadioButton_Package.Create;
        This.sequenceJRadioButton := JRadioButton_Package.Create;
        This.jPanel1 := JPanel_Package.Create;
        This.okJButton := JButton_Package.Create;
        This.keyIntegerJComboBox := JComboBox_Package.Create;
        This.keyActionJButton := JButton_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.keyActionJDialog.setMinimumSize (Dimension_Package.Create (255, 280));
        This.titleJLabel.setHorizontalAlignment (javax_Package.swing.SwingConstants.CENTER);
        This.titleJLabel.setText (To_Unbounded_String ("Keyboard Input Options"));
        This.addKeyJLabel.setText (To_Unbounded_String ("Add Key:"));
        This.keyNameJComboBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).keyNameJComboBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.timeJTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.holdTimeJLabel.setText (To_Unbounded_String ("Hold Time (ms):"));
        This.inputTypeJLabel.setText (To_Unbounded_String ("Input Type:"));
        This.delayJTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.delayBetweenJLabel.setText (To_Unbounded_String ("Delay Between Keys (ms):"));
        This.testJLabel.setText (To_Unbounded_String ("Text:"));
        This.textJTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.pressJRadioButton.setText (To_Unbounded_String ("Press"));
        This.pressJRadioButton.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.pressJRadioButton.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.pressJRadioButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).pressJRadioButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.releaseJRadioButton.setText (To_Unbounded_String ("Release"));
        This.releaseJRadioButton.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.releaseJRadioButton.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.releaseJRadioButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).releaseJRadioButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.normalJRadioButton.setSelected (True);
        This.normalJRadioButton.setText (To_Unbounded_String ("Normal"));
        This.normalJRadioButton.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.normalJRadioButton.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.normalJRadioButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).normalJRadioButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.simultaneousJRadioButton.setSelected (True);
        This.simultaneousJRadioButton.setText (To_Unbounded_String ("Simultaneous"));
        This.simultaneousJRadioButton.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.simultaneousJRadioButton.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.simultaneousJRadioButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).simultaneousJRadioButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.sequenceJRadioButton.setText (To_Unbounded_String ("Sequence"));
        This.sequenceJRadioButton.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.sequenceJRadioButton.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.sequenceJRadioButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).sequenceJRadioButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.okJButton.setText (To_Unbounded_String ("OK"));
        This.okJButton.setHorizontalTextPosition (javax_Package.swing.SwingConstants.CENTER);
        This.okJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).okJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jPanel1.add (This.okJButton);
        This.keyIntegerJComboBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).keyIntegerJComboBoxActionPerformed (evt);
--     end actionPerformed;
);
        keyActionJDialogLayout := GroupLayout_Package.Create (This.keyActionJDialog.getContentPane);
        This.keyActionJDialog.getContentPane.setLayout (keyActionJDialogLayout);
        keyActionJDialogLayout.setHorizontalGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (keyActionJDialogLayout.createSequentialGroup.addContainerGap.addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (keyActionJDialogLayout.createSequentialGroup.addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, False).addComponent (This.addKeyJLabel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Integer'Last).addComponent (This.inputTypeJLabel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Integer'Last)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING).addComponent (This.inputAutomationTypeJComboBox, 0, 148, Short_Integer'Last).addComponent (This.textJTextField, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 148, Short_Integer'Last).addGroup (keyActionJDialogLayout.createSequentialGroup.addComponent (This.keyNameJComboBox, 0, 101, Short_Integer'Last).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.keyIntegerJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 41, javax_Package.swing.GroupLayout.PREFERRED_SIZE)))).addComponent (This.testJLabel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 60, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addGroup (keyActionJDialogLayout.createSequentialGroup.addComponent (This.normalJRadioButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.pressJRadioButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.releaseJRadioButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 48, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, keyActionJDialogLayout.createSequentialGroup.addComponent (This.holdTimeJLabel).addGap (22, 22, 22).addComponent (This.timeJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 113, Short_Integer'Last)).addGroup (keyActionJDialogLayout.createSequentialGroup.addComponent (This.delayBetweenJLabel).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 15, Short_Integer'Last).addComponent (This.delayJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 68, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addGroup (keyActionJDialogLayout.createSequentialGroup.addComponent (This.simultaneousJRadioButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.sequenceJRadioButton))).addContainerGap).addComponent (This.titleJLabel, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 229, Short_Integer'Last).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 229, Short_Integer'Last));
        keyActionJDialogLayout.setVerticalGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (keyActionJDialogLayout.createSequentialGroup.addComponent (This.titleJLabel).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.inputTypeJLabel).addComponent (This.inputAutomationTypeJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.addKeyJLabel).addComponent (This.keyIntegerJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.keyNameJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.testJLabel).addComponent (This.textJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.pressJRadioButton).addComponent (This.normalJRadioButton).addComponent (This.releaseJRadioButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.holdTimeJLabel).addComponent (This.timeJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.delayBetweenJLabel).addComponent (This.delayJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (keyActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.simultaneousJRadioButton).addComponent (This.sequenceJRadioButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addContainerGap));
        KeyboardActionScriptInputJPanel'Class (This).setMinimumSize (Dimension_Package.Create (100, 0));
        This.keyActionJButton.setText (To_Unbounded_String ("Edit"));
        This.keyActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  KeyboardActionScriptInputJPanel'Class (This).keyActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel1.setText (To_Unbounded_String ("Key:"));
        layout := GroupLayout_Package.Create (KeyboardActionScriptInputJPanel_Access'(This'Unchecked_Access));
        KeyboardActionScriptInputJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jLabel1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 49, Short_Integer'Last).addComponent (This.keyActionJButton)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.keyActionJButton)));
   end initComponents;

   procedure prependText (This : in out KeyboardActionScriptInputJPanel; integer_Id : Integer) is
      newKey : Unbounded_String;
   begin
        if (integer_Id) /= (0) then
            newKey := To_Unbounded_String ("&#") & To_Unbounded_String (Java_Image (integer_Id)) & To_Unbounded_String (";");
            This.textJTextField.setText (newKey & Java_Image (This.textJTextField.getText));
        end if;
   end prependText;

   procedure keyIntegerJComboBoxActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.keyIntegerJComboBox.getSelectedIndex;
        This.keyNameJComboBox.setSelectedIndex (This.keyIntegerJComboBox.getSelectedIndex);
   end keyIntegerJComboBoxActionPerformed;

   procedure sequenceJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        if This.sequenceJRadioButton.isSelected then
            This.delayJTextField.setText (CommonPhoneStrings_Package.getInstance.ONE);
            This.simultaneousJRadioButton.setSelected (False);
        end if;
   end sequenceJRadioButtonActionPerformed;

   procedure simultaneousJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        if This.simultaneousJRadioButton.isSelected then
            This.delayJTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
            This.sequenceJRadioButton.setSelected (False);
        end if;
   end simultaneousJRadioButtonActionPerformed;

   procedure keyNameJComboBoxActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      integer_Id : Integer;
   begin
        integer_Id := KeyboardActionScriptInputJPanel'Class (This).getSelectedKey;
        KeyboardActionScriptInputJPanel'Class (This).prependText (integer_Id);
        This.keyIntegerJComboBox.setSelectedIndex (This.keyNameJComboBox.getSelectedIndex);
   end keyNameJComboBoxActionPerformed;

   procedure okJButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            KeyboardActionScriptInputJPanel'Class (This).update;
            KeyboardActionScriptInputJPanel'Class (This).getKeyActionJDialog.setVisible (False);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, KeyboardActionScriptInputJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("okButtonActionPerformed"), e);
                end;
        end;
   end okJButtonActionPerformed;

   procedure keyActionJButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        KeyboardActionScriptInputJPanel'Class (This).getKeyActionJDialog.setVisible (True);
   end keyActionJButtonActionPerformed;

   procedure normalJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        if This.normalJRadioButton.isSelected then
            This.keyActionScriptInputInterface.setNormal;
            This.pressJRadioButton.setSelected (False);
            This.releaseJRadioButton.setSelected (False);
        end if;
   end normalJRadioButtonActionPerformed;

   procedure releaseJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        if This.releaseJRadioButton.isSelected then
            This.keyActionScriptInputInterface.setRelease (True);
            This.keyActionScriptInputInterface.setPress (False);
            This.pressJRadioButton.setSelected (False);
            This.normalJRadioButton.setSelected (False);
        end if;
   end releaseJRadioButtonActionPerformed;

   procedure pressJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        if This.pressJRadioButton.isSelected then
            This.keyActionScriptInputInterface.setPress (True);
            This.keyActionScriptInputInterface.setRelease (False);
            This.releaseJRadioButton.setSelected (False);
            This.normalJRadioButton.setSelected (False);
        end if;
   end pressJRadioButtonActionPerformed;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package;



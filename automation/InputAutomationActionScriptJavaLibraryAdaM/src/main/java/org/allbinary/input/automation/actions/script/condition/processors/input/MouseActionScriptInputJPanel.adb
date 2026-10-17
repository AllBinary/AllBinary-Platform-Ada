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


package body org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package is

   procedure Initialize_Fields (This : in out MouseActionScriptInputJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.button1JCheckBox := null;
      This.button2JCheckBox := null;
      This.inputAutomationTypeJComboBox := null;
      This.inputTypeJLabel := null;
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.jLabel3 := null;
      This.jLabel4 := null;
      This.jLabel5 := null;
      This.jLabel6 := null;
      This.mouseActionJButton := null;
      This.mouseActionJDialog := null;
      This.mouseDelayJTextField := null;
      This.mouseXJTextField := null;
      This.mouseYJTextField := null;
      This.okJButton := null;
      This.titleJLabel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out MouseActionScriptInputJPanel'Class; mouseActionScriptInputInterface : MouseActionScriptInputInterface_Access) is
      defaultComboBoxModel : DefaultComboBoxModel_Access;
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF ((CommonLabels_Package.getInstance.START) + (mouseActionScriptInputInterface), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.initComponents;
        This.mouseActionScriptInputInterface := mouseActionScriptInputInterface;
        defaultComboBoxModel := DefaultComboBoxModel_Package.Create;
        defaultComboBoxModel.addElement (TempInputRobotNames_Package.LOW_NAME);
        defaultComboBoxModel.addElement (TempInputRobotNames_Package.SYS_NAME);
        defaultComboBoxModel.addElement (InputRobot_Package.NAME);
        This.inputAutomationTypeJComboBox.setModel (defaultComboBoxModel);
        This.set;
   end Initialize;

   function Create (mouseActionScriptInputInterface : MouseActionScriptInputInterface_Access) return MouseActionScriptInputJPanel_Access is
      This : constant MouseActionScriptInputJPanel_Access := new MouseActionScriptInputJPanel;
   begin
      MouseActionScriptInputJPanel_Package.Initialize (This.all, mouseActionScriptInputInterface);
      return This;
   end Create;

   procedure set (This : in out MouseActionScriptInputJPanel) is
      inputTypeComboBoxModel : ComboBoxModel_Access;
   begin
        inputTypeComboBoxModel := This.inputAutomationTypeJComboBox.getModel;
        inputTypeComboBoxModel.setSelectedItem (This.mouseActionScriptInputInterface.getInputRobotInterface.getName);
        if ((Java_And (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON1_MASK))) /= (0) then
            This.button1JCheckBox.setSelected (True);
        else
            This.button1JCheckBox.setSelected (False);
        end if;
        if ((Java_And (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON2_MASK))) /= (0) then
            This.button2JCheckBox.setSelected (True);
        else
            This.button2JCheckBox.setSelected (False);
        end if;
        This.mouseDelayJTextField.setText (To_Unbounded_String (Java_Image (This.mouseActionScriptInputInterface.getTime)));
        This.mouseXJTextField.setText (To_Unbounded_String (Java_Image (This.mouseActionScriptInputInterface.getPoint.x)));
        This.mouseYJTextField.setText (To_Unbounded_String (Java_Image (This.mouseActionScriptInputInterface.getPoint.y)));
        This.mouseActionScriptInputInterface.log;
   end set;

   --  throws Exception
   procedure updateInputType (This : in out MouseActionScriptInputJPanel) is
      comboBoxModel : ComboBoxModel_Access;
      selectedItem : Unbounded_String;
   begin
        comboBoxModel := This.inputAutomationTypeJComboBox.getModel;
        selectedItem := Unbounded_String (comboBoxModel.getSelectedItem);
        if not (StringValidationUtil_Package.getInstance.isEmpty (selectedItem)) then
            This.mouseActionScriptInputInterface.setInputRobotInterface (InputRobotFactory_Package.getInstance.get (selectedItem));
        end if;
   end updateInputType;

   --  throws Exception
   procedure update (This : in out MouseActionScriptInputJPanel) is
      mouseXString : Unbounded_String;
      mouseYString : Unbounded_String;
   begin
        This.updateInputType;
        This.mouseActionScriptInputInterface.setTime (To_Unbounded_String (Java_Image (This.mouseDelayJTextField.getText)));
        This.logUtil.putF (To_Unbounded_String ("Button State: ") & Java_Image (This.mouseActionScriptInputInterface.getButtonClicks), This'Unchecked_Access, To_Unbounded_String ("update"));
        if This.button1JCheckBox.isSelected then
            if ((Java_And (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON1_MASK))) = (0) then
                This.mouseActionScriptInputInterface.setButtonClicks (Java_Or (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON1_MASK));
                This.logUtil.putF (To_Unbounded_String ("Button 1 Selected: ") & Java_Image (This.mouseActionScriptInputInterface.getButtonClicks), This'Unchecked_Access, To_Unbounded_String ("update"));
            end if;
        else
            if ((Java_And (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON1_MASK))) /= (0) then
                This.mouseActionScriptInputInterface.setButtonClicks (Java_Xor (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON1_MASK));
                This.logUtil.putF (To_Unbounded_String ("Button 1 Deselected: ") & Java_Image (This.mouseActionScriptInputInterface.getButtonClicks), This'Unchecked_Access, To_Unbounded_String ("update"));
            end if;
        end if;
        if This.button2JCheckBox.isSelected then
            if ((Java_And (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON2_MASK))) = (0) then
                This.mouseActionScriptInputInterface.setButtonClicks (Java_Or (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON2_MASK));
                This.logUtil.putF (To_Unbounded_String ("Button 2 Selected: ") & Java_Image (This.mouseActionScriptInputInterface.getButtonClicks), This'Unchecked_Access, To_Unbounded_String ("update"));
            end if;
        else
            if ((Java_And (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON2_MASK))) /= (0) then
                This.mouseActionScriptInputInterface.setButtonClicks (Java_Xor (This.mouseActionScriptInputInterface.getButtonClicks, InputEvent_Package.BUTTON2_MASK));
                This.logUtil.putF (To_Unbounded_String ("Button 2 Deselected: ") & Java_Image (This.mouseActionScriptInputInterface.getButtonClicks), This'Unchecked_Access, To_Unbounded_String ("update"));
            end if;
        end if;
        mouseXString := This.mouseXJTextField.getText;
        if (not (StringValidationUtil_Package.getInstance.isEmpty (mouseXString))) and then (StringValidationUtil_Package.getInstance.isNumber (mouseXString)) then
            This.mouseActionScriptInputInterface.getPoint.x := Integer'Value (To_String (mouseXString));
        end if;
        mouseYString := This.mouseYJTextField.getText;
        if (not (StringValidationUtil_Package.getInstance.isEmpty (mouseYString))) and then (StringValidationUtil_Package.getInstance.isNumber (mouseYString)) then
            This.mouseActionScriptInputInterface.getPoint.y := Integer'Value (To_String (mouseYString));
        end if;
        This.mouseActionScriptInputInterface.log;
   end update;

   function getMouseActionJDialog (This : in out MouseActionScriptInputJPanel) return JDialog_Access is
   begin
        return This.mouseActionJDialog;
   end getMouseActionJDialog;

   procedure setMouseActionJDialog (This : in out MouseActionScriptInputJPanel; mouseActionJDialog : JDialog_Access) is
   begin
        This.mouseActionJDialog := mouseActionJDialog;
   end setMouseActionJDialog;

   procedure initComponents (This : in out MouseActionScriptInputJPanel) is
      mouseActionJDialogLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.mouseActionJDialog := JDialog_Package.Create;
        This.titleJLabel := JLabel_Package.Create;
        This.okJButton := JButton_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        This.jLabel3 := JLabel_Package.Create;
        This.button1JCheckBox := JCheckBox_Package.Create;
        This.button2JCheckBox := JCheckBox_Package.Create;
        This.jLabel4 := JLabel_Package.Create;
        This.mouseXJTextField := JTextField_Package.Create;
        This.jLabel5 := JLabel_Package.Create;
        This.mouseYJTextField := JTextField_Package.Create;
        This.inputTypeJLabel := JLabel_Package.Create;
        This.inputAutomationTypeJComboBox := JComboBox_Package.Create;
        This.jLabel6 := JLabel_Package.Create;
        This.mouseDelayJTextField := JTextField_Package.Create;
        This.mouseActionJButton := JButton_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.mouseActionJDialog.setMinimumSize (Dimension_Package.Create (275, 185));
        This.titleJLabel.setText (To_Unbounded_String ("Mouse Input Options"));
        This.okJButton.setText (To_Unbounded_String ("OK"));
        This.okJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.okJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel2.setText (To_Unbounded_String ("Buttons:"));
        This.jLabel3.setText (To_Unbounded_String ("Move To:"));
        This.button1JCheckBox.setText (CommonPhoneStrings_Package.getInstance.ONE);
        This.button1JCheckBox.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.button1JCheckBox.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.button2JCheckBox.setText (CommonPhoneStrings_Package.getInstance.TWO);
        This.button2JCheckBox.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.button2JCheckBox.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.button2JCheckBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.button2JCheckBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel4.setText (To_Unbounded_String ("x:"));
        This.mouseXJTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.jLabel5.setText (To_Unbounded_String ("y:"));
        This.mouseYJTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.inputTypeJLabel.setText (To_Unbounded_String ("Input Type:"));
        This.jLabel6.setText (To_Unbounded_String ("Delay:"));
        This.mouseDelayJTextField.setText (To_Unbounded_String ("100"));
        mouseActionJDialogLayout := GroupLayout_Package.Create (This.mouseActionJDialog.getContentPane);
        This.mouseActionJDialog.getContentPane.setLayout (mouseActionJDialogLayout);
        mouseActionJDialogLayout.setHorizontalGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (mouseActionJDialogLayout.createSequentialGroup.addContainerGap.addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.inputTypeJLabel).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup.addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup.addComponent (This.jLabel2).addGap (25, 25, 25)).addGroup (mouseActionJDialogLayout.createSequentialGroup.addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jLabel3).addComponent (This.jLabel6)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED))).addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.mouseDelayJTextField, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 154, Short_Package.MAX_VALUE).addGroup (mouseActionJDialogLayout.createSequentialGroup.addComponent (This.titleJLabel).addGap (45, 45, 45)).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup.addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.inputAutomationTypeJComboBox, 0, 154, Short_Package.MAX_VALUE)).addGroup (mouseActionJDialogLayout.createSequentialGroup.addComponent (This.button1JCheckBox).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.button2JCheckBox)).addGroup (mouseActionJDialogLayout.createSequentialGroup.addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING).addGroup (mouseActionJDialogLayout.createSequentialGroup.addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.okJButton)).addGroup (mouseActionJDialogLayout.createSequentialGroup.addComponent (This.jLabel4).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 5, Short_Package.MAX_VALUE).addComponent (This.mouseXJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 59, javax_Package.swing.GroupLayout.PREFERRED_SIZE))).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel5).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.mouseYJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 62, Short_Package.MAX_VALUE))))).addContainerGap));
        mouseActionJDialogLayout.setVerticalGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (mouseActionJDialogLayout.createSequentialGroup.addComponent (This.titleJLabel).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.inputTypeJLabel).addComponent (This.inputAutomationTypeJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jLabel2, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 15, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.button1JCheckBox).addComponent (This.button2JCheckBox))).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel6).addComponent (This.mouseDelayJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (mouseActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel3).addComponent (This.jLabel4).addComponent (This.jLabel5).addComponent (This.mouseYJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.mouseXJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addComponent (This.okJButton).addContainerGap));
        This.setMinimumSize (Dimension_Package.Create (100, 0));
        This.mouseActionJButton.setText (To_Unbounded_String ("Edit"));
        This.mouseActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.mouseActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel1.setText (To_Unbounded_String ("Mouse:"));
        layout := GroupLayout_Package.Create (This'Unchecked_Access);
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jLabel1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 36, Short_Package.MAX_VALUE).addComponent (This.mouseActionJButton)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.mouseActionJButton)));
   end initComponents;

   procedure button2JCheckBoxActionPerformed (This : in out MouseActionScriptInputJPanel; evt : ActionEvent_Access) is
   begin
        null;
   end button2JCheckBoxActionPerformed;

   procedure okJButtonActionPerformed (This : in out MouseActionScriptInputJPanel; evt : ActionEvent_Access) is
   begin
        begin
            This.update;
            This.getMouseActionJDialog.setVisible (False);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("okButtonActionPerformed"), e);
                end;
        end;
   end okJButtonActionPerformed;

   procedure mouseActionJButtonActionPerformed (This : in out MouseActionScriptInputJPanel; evt : ActionEvent_Access) is
   begin
        This.getMouseActionJDialog.setVisible (True);
   end mouseActionJButtonActionPerformed;

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package;



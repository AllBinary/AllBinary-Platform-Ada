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


package body org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package is

   procedure Initialize_Fields (This : in out InputAutomationTypeJPanel'Class) is
   begin
      null;
      This.inputAutomationTypeJComboBox := null;
      This.jLabel1 := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationTypeJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create return InputAutomationTypeJPanel_Access is
      This : constant InputAutomationTypeJPanel_Access := new InputAutomationTypeJPanel;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInputAutomationTypeJComboBox (This : in out InputAutomationTypeJPanel) return JComboBox_Access is
   begin
        return This.inputAutomationTypeJComboBox;
   end getInputAutomationTypeJComboBox;

   procedure setInputAutomationTypeJComboBox (This : in out InputAutomationTypeJPanel; inputAutomationTypeJComboBox : JComboBox_Access) is
   begin
        This.inputAutomationTypeJComboBox := inputAutomationTypeJComboBox;
   end setInputAutomationTypeJComboBox;

   procedure initComponents (This : in out InputAutomationTypeJPanel) is
      layout : GroupLayout_Access;
   begin
        This.inputAutomationTypeJComboBox := JComboBox_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.inputAutomationTypeJComboBox.setModel (DefaultComboBoxModel_Package.Create (new Unbounded_String_Array'(To_Unbounded_String ("DirectX"), To_Unbounded_String ("DirectX 8"), To_Unbounded_String ("Low Level"), To_Unbounded_String ("Java Robot"))));
        This.jLabel1.setText (To_Unbounded_String ("Input Type:"));
        layout := GroupLayout_Package.Create (This'Unchecked_Access);
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jLabel1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.inputAutomationTypeJComboBox, 0, 98, Short_Package.MAX_VALUE)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.inputAutomationTypeJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)));
   end initComponents;

   procedure getInputAutomationTypeJComboBox (This : in out InputAutomationTypeJPanel) is
      Java_Result : constant JComboBox_Access := InputAutomationTypeJPanel'Class (This).getInputAutomationTypeJComboBox;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputAutomationTypeJComboBox;

end org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package;



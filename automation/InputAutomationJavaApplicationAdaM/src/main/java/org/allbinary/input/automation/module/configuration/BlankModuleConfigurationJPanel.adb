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


package body org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package is

   procedure Initialize_Fields (This : in out BlankModuleConfigurationJPanel'Class) is
   begin
      null;
      This.jLabel1 := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BlankModuleConfigurationJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create return BlankModuleConfigurationJPanel_Access is
      This : constant BlankModuleConfigurationJPanel_Access := new BlankModuleConfigurationJPanel;
   begin
      BlankModuleConfigurationJPanel_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initComponents (This : in out BlankModuleConfigurationJPanel) is
      layout : GroupLayout_Access;
   begin
        This.jLabel1 := JLabel_Package.Create;
        This.jLabel1.setText (To_Unbounded_String ("No Configuration Available"));
        layout := GroupLayout_Package.Create (This'Unchecked_Access);
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup.addContainerGap (231, Short_Package.MAX_VALUE).addComponent (This.jLabel1).addGap (225, 225, 225)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addComponent (This.jLabel1).addContainerGap (362, Short_Package.MAX_VALUE)));
   end initComponents;

end org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;



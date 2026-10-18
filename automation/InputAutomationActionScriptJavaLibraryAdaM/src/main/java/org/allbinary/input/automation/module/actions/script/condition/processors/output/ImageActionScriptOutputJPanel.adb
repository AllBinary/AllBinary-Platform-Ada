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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.DefaultListModel_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.DefaultListModel_Package;

package body org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package InputImageType_Package renames Standard.org.allbinary.input.media.image.InputImageType_Package;
   procedure Initialize_Fields (This : in out ImageActionScriptOutputJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.capturedImageActionJButton := null;
      This.capturedImageActionJDialog := null;
      This.displayJCheckBox := null;
      This.itemTypesJList := null;
      This.jLabel1 := null;
      This.jScrollPane1 := null;
      This.okJButton := null;
      This.saveJCheckBox := null;
      This.titleJLabel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageActionScriptOutputJPanel'Class; capturedImageActionScriptOutputInterface_Param : access ImageActionScriptOutputInterface_Package.ImageActionScriptOutputInterface'Class) is
      capturedImageActionScriptOutputInterface : constant ImageActionScriptOutputInterface_Access := ImageActionScriptOutputInterface_Access (capturedImageActionScriptOutputInterface_Param);
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, ImageActionScriptOutputJPanel_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        ImageActionScriptOutputJPanel'Class (This).initComponents;
        This.capturedImageActionScriptOutputInterface := capturedImageActionScriptOutputInterface;
        ImageActionScriptOutputJPanel'Class (This).set;
   end Initialize;

   function Create (capturedImageActionScriptOutputInterface_Param : access ImageActionScriptOutputInterface_Package.ImageActionScriptOutputInterface'Class) return ImageActionScriptOutputJPanel_Access is
      This : constant ImageActionScriptOutputJPanel_Access := new ImageActionScriptOutputJPanel;
   begin
      ImageActionScriptOutputJPanel_Package.Initialize (This.all, capturedImageActionScriptOutputInterface_Param);
      return This;
   end Create;

   procedure set (This : in out ImageActionScriptOutputJPanel) is
      imageTypes : ImageTypes_Access;
      vector : BasicArrayList_Access;
      selectedArray : Integer_Array_Access;
      size : Integer;
      imageType : InputImageType_Access;
      index : Integer;
   begin
        ImageActionScriptOutputJPanel'Class (This).setImageTypeJlistModel;
        imageTypes := This.capturedImageActionScriptOutputInterface.getImageTypes;
        vector := imageTypes.getVector;
        selectedArray := new Integer_Array'(0 .. (vector.size) - 1 => 0);
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            imageType := InputImageType_Access (vector.get (index));
            selectedArray (Java_Post_Increment (index)) := imageType.getIndex;
        end loop;
        This.itemTypesJList.setSelectedIndices (selectedArray);
        if This.capturedImageActionScriptOutputInterface.isSaved then
            This.saveJCheckBox.setSelected (True);
        end if;
        if This.capturedImageActionScriptOutputInterface.isSaved then
            This.displayJCheckBox.setSelected (True);
        end if;
        This.capturedImageActionScriptOutputInterface.log;
   end set;

   procedure update (This : in out ImageActionScriptOutputJPanel) is
      anyType : Java_Object_Access_Array_Access;
      imageTypes : ImageTypes_Access;
   begin
        anyType := This.itemTypesJList.getSelectedValues;
        imageTypes := ImageTypes_Package.valueOf (anyType);
        This.capturedImageActionScriptOutputInterface.setImageTypes (imageTypes);
        if This.saveJCheckBox.isSelected then
            This.capturedImageActionScriptOutputInterface.setSaved (True);
        else
            This.capturedImageActionScriptOutputInterface.setSaved (False);
        end if;
        if This.displayJCheckBox.isSelected then
            This.capturedImageActionScriptOutputInterface.setDisplay (True);
        else
            This.capturedImageActionScriptOutputInterface.setDisplay (False);
        end if;
        This.capturedImageActionScriptOutputInterface.log;
   end update;

   procedure setImageTypeJlistModel (This : in out ImageActionScriptOutputJPanel) is
      defaultListModel : DefaultListModel_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      imageType : InputImageType_Access;
      index : Integer;
   begin
        defaultListModel := DefaultListModel_Package.Create;
        vector := InputImageType_Package.getAllAsVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            imageType := InputImageType_Access (vector.get (index));
            defaultListModel.addElement (imageType.getName);
        end loop;
        This.itemTypesJList.setModel (defaultListModel);
   end setImageTypeJlistModel;

   function getCapturedImageActionJDialog (This : in out ImageActionScriptOutputJPanel) return JDialog_Access is
   begin
        return This.capturedImageActionJDialog;
   end getCapturedImageActionJDialog;

   procedure setCapturedImageActionJDialog (This : in out ImageActionScriptOutputJPanel; capturedImageActionJDialog_Param : access JDialog_Package.JDialog'Class) is
      capturedImageActionJDialog : constant JDialog_Access := JDialog_Access (capturedImageActionJDialog_Param);
   begin
        This.capturedImageActionJDialog := capturedImageActionJDialog;
   end setCapturedImageActionJDialog;

   procedure initComponents (This : in out ImageActionScriptOutputJPanel) is
      capturedImageActionJDialogLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.capturedImageActionJDialog := JDialog_Package.Create;
        This.titleJLabel := JLabel_Package.Create;
        This.okJButton := JButton_Package.Create;
        This.saveJCheckBox := JCheckBox_Package.Create;
        This.displayJCheckBox := JCheckBox_Package.Create;
        This.jScrollPane1 := JScrollPane_Package.Create;
        This.itemTypesJList := JList_Package.Create;
        This.capturedImageActionJButton := JButton_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.capturedImageActionJDialog.setMinimumSize (Dimension_Package.Create (250, 250));
        This.titleJLabel.setText (To_Unbounded_String ("Image Output Options"));
        This.okJButton.setText (To_Unbounded_String ("OK"));
        This.okJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageActionScriptOutputJPanel'Class (This).okJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.saveJCheckBox.setText (To_Unbounded_String ("Save To File"));
        This.saveJCheckBox.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.saveJCheckBox.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.displayJCheckBox.setText (To_Unbounded_String ("Display"));
        This.displayJCheckBox.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.displayJCheckBox.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.displayJCheckBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageActionScriptOutputJPanel'Class (This).displayJCheckBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.itemTypesJList.setModel (AbstractListModel_Package.Create  --  Java anonymous class body: implement it as a named type
--              This.strings := new Unbounded_String_Array'(To_Unbounded_String ("Item 1"), To_Unbounded_String ("Item 2"), To_Unbounded_String ("Item 3"), To_Unbounded_String ("Item 4"), To_Unbounded_String ("Item 5"));
--              
--     function getSize (This : in out ) return Integer is
--     begin
--                  return strings'Length;
--          return 0;
--     end getSize;
--              
--     function getElementAt (This : in out ; i : Integer) return Java_Object_Access is
--     begin
--                  return Java_Box (strings (i));
--          return null;
--     end getElementAt;
);
        This.jScrollPane1.setViewportView (This.itemTypesJList);
        capturedImageActionJDialogLayout := GroupLayout_Package.Create (This.capturedImageActionJDialog.getContentPane);
        This.capturedImageActionJDialog.getContentPane.setLayout (capturedImageActionJDialogLayout);
        capturedImageActionJDialogLayout.setHorizontalGroup (capturedImageActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (capturedImageActionJDialogLayout.createSequentialGroup.addGroup (capturedImageActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (capturedImageActionJDialogLayout.createSequentialGroup.addGap (61, 61, 61).addComponent (This.titleJLabel)).addGroup (capturedImageActionJDialogLayout.createSequentialGroup.addContainerGap.addGroup (capturedImageActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (capturedImageActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.displayJCheckBox).addComponent (This.saveJCheckBox, javax_Package.swing.GroupLayout.Alignment.TRAILING)).addGroup (capturedImageActionJDialogLayout.createSequentialGroup.addGap (84, 84, 84).addComponent (This.okJButton)))).addGroup (capturedImageActionJDialogLayout.createSequentialGroup.addContainerGap.addComponent (This.jScrollPane1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 216, Short_Integer'Last))).addContainerGap));
        capturedImageActionJDialogLayout.setVerticalGroup (capturedImageActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (capturedImageActionJDialogLayout.createSequentialGroup.addComponent (This.titleJLabel).addGap (5, 5, 5).addComponent (This.jScrollPane1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 105, Short_Integer'Last).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.saveJCheckBox).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.displayJCheckBox).addGap (9, 9, 9).addComponent (This.okJButton).addContainerGap));
        ImageActionScriptOutputJPanel'Class (This).setMinimumSize (Dimension_Package.Create (100, 0));
        This.capturedImageActionJButton.setText (To_Unbounded_String ("Edit"));
        This.capturedImageActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageActionScriptOutputJPanel'Class (This).capturedImageActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel1.setText (To_Unbounded_String ("Capture Image:"));
        layout := GroupLayout_Package.Create (ImageActionScriptOutputJPanel_Access'(This'Unchecked_Access));
        ImageActionScriptOutputJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jLabel1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Integer'Last).addComponent (This.capturedImageActionJButton)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.capturedImageActionJButton)));
   end initComponents;

   procedure displayJCheckBoxActionPerformed (This : in out ImageActionScriptOutputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end displayJCheckBoxActionPerformed;

   procedure okJButtonActionPerformed (This : in out ImageActionScriptOutputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        ImageActionScriptOutputJPanel'Class (This).update;
        ImageActionScriptOutputJPanel'Class (This).getCapturedImageActionJDialog.setVisible (False);
   end okJButtonActionPerformed;

   procedure capturedImageActionJButtonActionPerformed (This : in out ImageActionScriptOutputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        ImageActionScriptOutputJPanel'Class (This).getCapturedImageActionJDialog.setVisible (True);
   end capturedImageActionJButtonActionPerformed;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package;



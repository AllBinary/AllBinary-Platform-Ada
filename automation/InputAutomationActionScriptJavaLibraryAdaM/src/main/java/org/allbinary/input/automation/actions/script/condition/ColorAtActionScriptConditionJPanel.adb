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


package body org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package is

   procedure Initialize_Fields (This : in out ColorAtActionScriptConditionJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.blueJLabel := null;
      This.colorAtActionJButton := null;
      This.colorAtActionJDialog := null;
      This.colorAtXJTextField := null;
      This.colorAtYJTextField := null;
      This.colorRangeJLabel := null;
      This.greenJLabel := null;
      This.jLabel1 := null;
      This.locationJLabel := null;
      This.maxBlueJTextField := null;
      This.maxGreenJTextField := null;
      This.maxJLabel := null;
      This.maxRedJTextField := null;
      This.minBlueJTextField := null;
      This.minGreenJTextField := null;
      This.minJLabel := null;
      This.minRedJTextField := null;
      This.okJButton := null;
      This.redJLabel := null;
      This.titleJLabel := null;
      This.xJLabel := null;
      This.yJLabel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorAtActionScriptConditionJPanel'Class; colorAtActionScriptConditionInterface_Param : access ColorAtActionScriptConditionInterface_Package.ColorAtActionScriptConditionInterface'Class) is
      colorAtActionScriptConditionInterface : constant ColorAtActionScriptConditionInterface_Access := ColorAtActionScriptConditionInterface_Access (colorAtActionScriptConditionInterface_Param);
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, ColorAtActionScriptConditionJPanel_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        ColorAtActionScriptConditionJPanel'Class (This).initComponents;
        This.colorAtActionScriptConditionInterface := colorAtActionScriptConditionInterface;
        ColorAtActionScriptConditionJPanel'Class (This).set;
   end Initialize;

   function Create (colorAtActionScriptConditionInterface_Param : access ColorAtActionScriptConditionInterface_Package.ColorAtActionScriptConditionInterface'Class) return ColorAtActionScriptConditionJPanel_Access is
      This : constant ColorAtActionScriptConditionJPanel_Access := new ColorAtActionScriptConditionJPanel;
   begin
      ColorAtActionScriptConditionJPanel_Package.Initialize (This.all, colorAtActionScriptConditionInterface_Param);
      return This;
   end Create;

   procedure set (This : in out ColorAtActionScriptConditionJPanel) is
      colorRangeInterface : ColorRangeInterface_Access;
   begin
        colorRangeInterface := This.colorAtActionScriptConditionInterface.getColorRangeInterface;
        ColorAtActionScriptConditionJPanel'Class (This).getMinRedJTextField.setText (To_Unbounded_String (Java_Image (colorRangeInterface.getMinRed)));
        ColorAtActionScriptConditionJPanel'Class (This).getMaxRedJTextField.setText (To_Unbounded_String (Java_Image (colorRangeInterface.getMaxRed)));
        ColorAtActionScriptConditionJPanel'Class (This).getMinGreenJTextField.setText (To_Unbounded_String (Java_Image (colorRangeInterface.getMinGreen)));
        ColorAtActionScriptConditionJPanel'Class (This).getMaxGreenJTextField.setText (To_Unbounded_String (Java_Image (colorRangeInterface.getMaxGreen)));
        ColorAtActionScriptConditionJPanel'Class (This).getMinBlueJTextField.setText (To_Unbounded_String (Java_Image (colorRangeInterface.getMinBlue)));
        ColorAtActionScriptConditionJPanel'Class (This).getMaxBlueJTextField.setText (To_Unbounded_String (Java_Image (colorRangeInterface.getMaxBlue)));
        ColorAtActionScriptConditionJPanel'Class (This).getColorAtXJTextField.setText (To_Unbounded_String (Java_Image (This.colorAtActionScriptConditionInterface.getPoint.x)));
        ColorAtActionScriptConditionJPanel'Class (This).getColorAtYJTextField.setText (To_Unbounded_String (Java_Image (This.colorAtActionScriptConditionInterface.getPoint.y)));
        This.colorAtActionScriptConditionInterface.log;
   end set;

   procedure update (This : in out ColorAtActionScriptConditionJPanel) is
      colorRangeInterface : ColorRangeInterface_Access;
      xString : Unbounded_String;
      yString : Unbounded_String;
   begin
        colorRangeInterface := This.colorAtActionScriptConditionInterface.getColorRangeInterface;
        colorRangeInterface.setMinRed (To_Unbounded_String (Java_Image (ColorAtActionScriptConditionJPanel'Class (This).getMinRedJTextField.getText)).intValue);
        colorRangeInterface.setMaxRed (To_Unbounded_String (Java_Image (ColorAtActionScriptConditionJPanel'Class (This).getMaxRedJTextField.getText)).intValue);
        colorRangeInterface.setMinGreen (To_Unbounded_String (Java_Image (ColorAtActionScriptConditionJPanel'Class (This).getMinGreenJTextField.getText)).intValue);
        colorRangeInterface.setMaxGreen (To_Unbounded_String (Java_Image (ColorAtActionScriptConditionJPanel'Class (This).getMaxGreenJTextField.getText)).intValue);
        colorRangeInterface.setMinBlue (To_Unbounded_String (Java_Image (ColorAtActionScriptConditionJPanel'Class (This).getMinBlueJTextField.getText)).intValue);
        colorRangeInterface.setMaxBlue (To_Unbounded_String (Java_Image (ColorAtActionScriptConditionJPanel'Class (This).getMaxBlueJTextField.getText)).intValue);
        xString := ColorAtActionScriptConditionJPanel'Class (This).getColorAtXJTextField.getText;
        if (not (StringValidationUtil_Package.getInstance.isEmpty (xString))) and then (StringValidationUtil_Package.getInstance.isNumber (xString)) then
            This.colorAtActionScriptConditionInterface.getPoint.x := Integer'Value (To_String (xString));
        end if;
        yString := ColorAtActionScriptConditionJPanel'Class (This).getColorAtYJTextField.getText;
        if (not (StringValidationUtil_Package.getInstance.isEmpty (yString))) and then (StringValidationUtil_Package.getInstance.isNumber (yString)) then
            This.colorAtActionScriptConditionInterface.getPoint.y := Integer'Value (To_String (xString));
        end if;
        This.colorAtActionScriptConditionInterface.log;
   end update;

   function getColorAtXJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.colorAtXJTextField;
   end getColorAtXJTextField;

   procedure setColorAtXJTextField (This : in out ColorAtActionScriptConditionJPanel; colorAtXJTextField_Param : access JTextField_Package.JTextField'Class) is
      colorAtXJTextField : constant JTextField_Access := JTextField_Access (colorAtXJTextField_Param);
   begin
        This.colorAtXJTextField := colorAtXJTextField;
   end setColorAtXJTextField;

   function getColorAtYJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.colorAtYJTextField;
   end getColorAtYJTextField;

   procedure setColorAtYJTextField (This : in out ColorAtActionScriptConditionJPanel; colorAtYJTextField_Param : access JTextField_Package.JTextField'Class) is
      colorAtYJTextField : constant JTextField_Access := JTextField_Access (colorAtYJTextField_Param);
   begin
        This.colorAtYJTextField := colorAtYJTextField;
   end setColorAtYJTextField;

   function getMaxBlueJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.maxBlueJTextField;
   end getMaxBlueJTextField;

   procedure setMaxBlueJTextField (This : in out ColorAtActionScriptConditionJPanel; maxBlueJTextField_Param : access JTextField_Package.JTextField'Class) is
      maxBlueJTextField : constant JTextField_Access := JTextField_Access (maxBlueJTextField_Param);
   begin
        This.maxBlueJTextField := maxBlueJTextField;
   end setMaxBlueJTextField;

   function getMaxGreenJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.maxGreenJTextField;
   end getMaxGreenJTextField;

   procedure setMaxGreenJTextField (This : in out ColorAtActionScriptConditionJPanel; maxGreenJTextField_Param : access JTextField_Package.JTextField'Class) is
      maxGreenJTextField : constant JTextField_Access := JTextField_Access (maxGreenJTextField_Param);
   begin
        This.maxGreenJTextField := maxGreenJTextField;
   end setMaxGreenJTextField;

   function getMaxRedJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.maxRedJTextField;
   end getMaxRedJTextField;

   procedure setMaxRedJTextField (This : in out ColorAtActionScriptConditionJPanel; maxRedJTextField_Param : access JTextField_Package.JTextField'Class) is
      maxRedJTextField : constant JTextField_Access := JTextField_Access (maxRedJTextField_Param);
   begin
        This.maxRedJTextField := maxRedJTextField;
   end setMaxRedJTextField;

   function getMinBlueJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.minBlueJTextField;
   end getMinBlueJTextField;

   procedure setMinBlueJTextField (This : in out ColorAtActionScriptConditionJPanel; minBlueJTextField_Param : access JTextField_Package.JTextField'Class) is
      minBlueJTextField : constant JTextField_Access := JTextField_Access (minBlueJTextField_Param);
   begin
        This.minBlueJTextField := minBlueJTextField;
   end setMinBlueJTextField;

   function getMinGreenJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.minGreenJTextField;
   end getMinGreenJTextField;

   procedure setMinGreenJTextField (This : in out ColorAtActionScriptConditionJPanel; minGreenJTextField_Param : access JTextField_Package.JTextField'Class) is
      minGreenJTextField : constant JTextField_Access := JTextField_Access (minGreenJTextField_Param);
   begin
        This.minGreenJTextField := minGreenJTextField;
   end setMinGreenJTextField;

   function getMinRedJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access is
   begin
        return This.minRedJTextField;
   end getMinRedJTextField;

   procedure setMinRedJTextField (This : in out ColorAtActionScriptConditionJPanel; minRedJTextField_Param : access JTextField_Package.JTextField'Class) is
      minRedJTextField : constant JTextField_Access := JTextField_Access (minRedJTextField_Param);
   begin
        This.minRedJTextField := minRedJTextField;
   end setMinRedJTextField;

   function getYJLabel (This : in out ColorAtActionScriptConditionJPanel) return JLabel_Access is
   begin
        return This.yJLabel;
   end getYJLabel;

   procedure setYJLabel (This : in out ColorAtActionScriptConditionJPanel; yJLabel_Param : access JLabel_Package.JLabel'Class) is
      yJLabel : constant JLabel_Access := JLabel_Access (yJLabel_Param);
   begin
        This.yJLabel := yJLabel;
   end setYJLabel;

   function getColorAtActionJDialog (This : in out ColorAtActionScriptConditionJPanel) return JDialog_Access is
   begin
        return This.colorAtActionJDialog;
   end getColorAtActionJDialog;

   procedure setColorAtActionJDialog (This : in out ColorAtActionScriptConditionJPanel; colorAtActionJDialog_Param : access JDialog_Package.JDialog'Class) is
      colorAtActionJDialog : constant JDialog_Access := JDialog_Access (colorAtActionJDialog_Param);
   begin
        This.colorAtActionJDialog := colorAtActionJDialog;
   end setColorAtActionJDialog;

   procedure initComponents (This : in out ColorAtActionScriptConditionJPanel) is
      colorAtActionJDialogLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.colorAtActionJDialog := JDialog_Package.Create;
        This.titleJLabel := JLabel_Package.Create;
        This.locationJLabel := JLabel_Package.Create;
        This.colorAtXJTextField := JTextField_Package.Create;
        This.xJLabel := JLabel_Package.Create;
        This.yJLabel := JLabel_Package.Create;
        This.colorAtYJTextField := JTextField_Package.Create;
        This.colorRangeJLabel := JLabel_Package.Create;
        This.redJLabel := JLabel_Package.Create;
        This.minJLabel := JLabel_Package.Create;
        This.maxJLabel := JLabel_Package.Create;
        This.greenJLabel := JLabel_Package.Create;
        This.blueJLabel := JLabel_Package.Create;
        This.minRedJTextField := JTextField_Package.Create;
        This.maxRedJTextField := JTextField_Package.Create;
        This.maxGreenJTextField := JTextField_Package.Create;
        This.minBlueJTextField := JTextField_Package.Create;
        This.maxBlueJTextField := JTextField_Package.Create;
        This.okJButton := JButton_Package.Create;
        This.minGreenJTextField := JTextField_Package.Create;
        This.colorAtActionJButton := JButton_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.colorAtActionJDialog.setMinimumSize (Dimension_Package.Create (350, 250));
        This.titleJLabel.setText (To_Unbounded_String ("              Color At Action Options            "));
        This.locationJLabel.setText (To_Unbounded_String ("Location:"));
        This.xJLabel.setText (To_Unbounded_String ("X:"));
        This.yJLabel.setText (To_Unbounded_String ("Y:"));
        This.colorRangeJLabel.setText (To_Unbounded_String ("Color Range"));
        This.redJLabel.setText (To_Unbounded_String ("Red:"));
        This.minJLabel.setText (To_Unbounded_String ("Minimum"));
        This.maxJLabel.setText (To_Unbounded_String ("Maximum"));
        This.greenJLabel.setText (To_Unbounded_String ("Green:"));
        This.blueJLabel.setText (To_Unbounded_String ("Blue:"));
        This.okJButton.setText (To_Unbounded_String ("OK"));
        This.okJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ColorAtActionScriptConditionJPanel'Class (This).okJButtonActionPerformed (evt);
--     end actionPerformed;
);
        colorAtActionJDialogLayout := GroupLayout_Package.Create (This.colorAtActionJDialog.getContentPane);
        This.colorAtActionJDialog.getContentPane.setLayout (colorAtActionJDialogLayout);
        colorAtActionJDialogLayout.setHorizontalGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (colorAtActionJDialogLayout.createSequentialGroup.addContainerGap.addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (colorAtActionJDialogLayout.createSequentialGroup.addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING).addComponent (This.okJButton).addGroup (colorAtActionJDialogLayout.createSequentialGroup.addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, False).addGroup (colorAtActionJDialogLayout.createSequentialGroup.addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.blueJLabel).addComponent (This.greenJLabel).addComponent (This.redJLabel).addComponent (This.colorRangeJLabel)).addGap (29, 29, 29)).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup.addComponent (This.locationJLabel).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addComponent (This.xJLabel).addGap (18, 18, 18))).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.minBlueJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 40, Short_Package.MAX_VALUE).addComponent (This.minGreenJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 40, Short_Package.MAX_VALUE).addComponent (This.minJLabel, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addComponent (This.minRedJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 40, Short_Package.MAX_VALUE).addComponent (This.colorAtXJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 40, Short_Package.MAX_VALUE)).addGap (16, 16, 16))).addGap (6, 6, 6).addComponent (This.yJLabel).addGap (24, 24, 24).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING).addComponent (This.maxJLabel, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, colorAtActionJDialogLayout.createSequentialGroup.addGap (1, 1, 1).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, False).addComponent (This.maxBlueJTextField, javax_Package.swing.GroupLayout.Alignment.TRAILING).addComponent (This.maxRedJTextField, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 43, Short_Package.MAX_VALUE).addComponent (This.maxGreenJTextField, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 43, javax_Package.swing.GroupLayout.PREFERRED_SIZE))).addComponent (This.colorAtYJTextField, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 44, Short_Package.MAX_VALUE)).addGap (22, 22, 22)).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup.addComponent (This.titleJLabel).addGap (33, 33, 33)))));
        colorAtActionJDialogLayout.setVerticalGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (colorAtActionJDialogLayout.createSequentialGroup.addContainerGap.addComponent (This.titleJLabel).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (colorAtActionJDialogLayout.createSequentialGroup.addGap (15, 15, 15).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.xJLabel).addComponent (This.locationJLabel).addComponent (This.colorAtXJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.yJLabel)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.minJLabel).addComponent (This.colorRangeJLabel)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.minRedJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.redJLabel)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.greenJLabel).addComponent (This.minGreenJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (colorAtActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.blueJLabel).addComponent (This.minBlueJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 17, Short_Package.MAX_VALUE).addComponent (This.okJButton)).addGroup (colorAtActionJDialogLayout.createSequentialGroup.addGap (14, 14, 14).addComponent (This.colorAtYJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.maxJLabel).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.maxRedJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.maxGreenJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.maxBlueJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE))).addContainerGap));
        ColorAtActionScriptConditionJPanel'Class (This).setPreferredSize (Dimension_Package.Create (100, 0));
        This.colorAtActionJButton.setText (To_Unbounded_String ("Edit"));
        This.colorAtActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ColorAtActionScriptConditionJPanel'Class (This).colorAtActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel1.setText (To_Unbounded_String ("Color At:"));
        layout := GroupLayout_Package.Create (ColorAtActionScriptConditionJPanel_Access'(This'Unchecked_Access));
        ColorAtActionScriptConditionJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jLabel1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 15, Short_Package.MAX_VALUE).addComponent (This.colorAtActionJButton)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.colorAtActionJButton)));
   end initComponents;

   procedure okJButtonActionPerformed (This : in out ColorAtActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        ColorAtActionScriptConditionJPanel'Class (This).update;
        ColorAtActionScriptConditionJPanel'Class (This).getColorAtActionJDialog.setVisible (False);
   end okJButtonActionPerformed;

   procedure colorAtActionJButtonActionPerformed (This : in out ColorAtActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        ColorAtActionScriptConditionJPanel'Class (This).getColorAtActionJDialog.setVisible (True);
   end colorAtActionJButtonActionPerformed;

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package;



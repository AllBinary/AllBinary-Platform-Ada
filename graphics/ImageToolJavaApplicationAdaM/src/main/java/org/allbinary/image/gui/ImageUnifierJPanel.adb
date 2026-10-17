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


package body org.allbinary.image.gui.ImageUnifierJPanel_Package is

   procedure Initialize_Fields (This : in out ImageUnifierJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageStrings := ImageStrings_Package.getInstance;
      This.imagesRatioUtil := ImagesRatioUtil_Package.getInstance;
      This.imageProcessorInput := null;
      This.icon := null;
      This.imageUnifierProperties := null;
      This.result := null;
      This.isImageFillIn := True;
      This.avgRatioJTextField := null;
      This.cellHeightJTextField := null;
      This.cellRatioJTextField := null;
      This.cellWidthJTextField := null;
      This.columnsJTextField := null;
      This.downJButton := null;
      This.fudgeItJButton := null;
      This.imageJList := null;
      This.jButton1 := null;
      This.jButton2 := null;
      This.jButtonOrder := null;
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.jLabel3 := null;
      This.jLabel4 := null;
      This.jLabel5 := null;
      This.jLabel6 := null;
      This.jPanel1 := null;
      This.jScrollPane1 := null;
      This.jScrollPane2 := null;
      This.rowsJTextField := null;
      This.upJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageUnifierJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
        This.setImageProcessorInput (imageProcessorInput);
   end Initialize;

   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return ImageUnifierJPanel_Access is
      This : constant ImageUnifierJPanel_Access := new ImageUnifierJPanel;
   begin
      ImageUnifierJPanel_Package.Initialize (This.all, imageProcessorInput_Param);
      return This;
   end Create;

   procedure init (This : in out ImageUnifierJPanel) is
      imageProcessorInput : ImageProcessorInput_Access;
      bufferedImageArray : BufferedImage_Access_Array_Access;
      defaultListModel : DefaultListModel_Access;
      width : Long_Float;
      height : Long_Float;
      newWidth : Integer;
      oldRatio : Long_Float;
      newHeight : Integer;
      iconBufferedImage : BufferedImage_Access;
      index : Integer;
   begin
        begin
            imageProcessorInput := This.getImageProcessorInput;
            bufferedImageArray := imageProcessorInput.getBufferedImageArray;
            This.icon := new ImageIconUnique_Access_Array'(0 .. (bufferedImageArray'Length) - 1 => null);
            defaultListModel := DefaultListModel_Package.Create;
            for index in 0 .. (bufferedImageArray'Length) - 1 loop
                width := bufferedImageArray (index).getWidth;
                height := bufferedImageArray (index).getHeight;
                newWidth := 52;
                oldRatio := (width) / (height);
                newHeight := Integer (((Long_Float (newWidth)) / (oldRatio)));
                iconBufferedImage := ImageUtil_Package.getInstance.createBufferedImage (bufferedImageArray (index), newWidth, newHeight, True);
                This.icon (index) := ImageIconUnique_Package.Create (iconBufferedImage, index);
                defaultListModel.addElement (This.icon (index));
            end loop;
            This.imageJList.setModel (defaultListModel);
            This.updateOnPropertiesChange;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageUnifierJPanel_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
                end;
        end;
   end init;

   procedure updateImage (This : in out ImageUnifierJPanel) is
      bufferedImageArray : BufferedImage_Access_Array_Access;
      tempBufferedImageArray : BufferedImage_Access_Array_Access;
      indexedImageIcon : ImageIconUnique_Access;
      bufferedImage : BufferedImage_Access;
      index : Integer;
      totalImages : Integer;
      averageRatio : Long_Float;
      averageRatioString : Unbounded_String;
   begin
        begin
            bufferedImageArray := This.getImageProcessorInput.getBufferedImageArray;
            tempBufferedImageArray := new BufferedImage_Access_Array'(0 .. (bufferedImageArray'Length) - 1 => null);
            for index in 0 .. (bufferedImageArray'Length) - 1 loop
                indexedImageIcon := ImageIconUnique_Access (This.imageJList.getModel.getElementAt (index));
                bufferedImage := ImageUtil_Package.getInstance.createBufferedImage (bufferedImageArray (indexedImageIcon.getId), This.imageUnifierProperties.getImageUnifierCell.getWidth, This.imageUnifierProperties.getImageUnifierCell.getHeight, False);
                tempBufferedImageArray (index) := bufferedImage;
            end loop;
            totalImages := (This.imageUnifierProperties.getRows) * (This.imageUnifierProperties.getColumns);
            averageRatio := This.imagesRatioUtil.getAverage (tempBufferedImageArray, totalImages);
            averageRatioString := averageRatio.toString;
            if (Length (averageRatioString)) > (4) then
                averageRatioString := Unbounded_Slice (averageRatioString, (0) + 1, 4);
            end if;
            This.avgRatioJTextField.setText (averageRatioString);
            This.fudgeItJButton.setEnabled (False);
            if not (This.imagesRatioUtil.isEqual (tempBufferedImageArray, totalImages)) then
                if This.isImageFillIn then
                    This.fudgeItJButton.setEnabled (True);
                end if;
            end if;
            This.updateImage (tempBufferedImageArray);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageUnifierJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateImage"), e);
                end;
        end;
   end updateImage;

   procedure updateImageWithFudgedImages (This : in out ImageUnifierJPanel) is
      bufferedImageArray : BufferedImage_Access_Array_Access;
      tempBufferedImageArray : BufferedImage_Access_Array_Access;
      indexedImageIcon : ImageIconUnique_Access;
      bufferedImage : BufferedImage_Access;
      index : Integer;
      totalImages : Integer;
      averageRatio : Long_Float;
      fudgedBufferedImageArray : BufferedImage_Access_Array_Access;
   begin
        begin
            bufferedImageArray := This.getImageProcessorInput.getBufferedImageArray;
            tempBufferedImageArray := new BufferedImage_Access_Array'(0 .. (bufferedImageArray'Length) - 1 => null);
            for index in 0 .. (bufferedImageArray'Length) - 1 loop
                indexedImageIcon := ImageIconUnique_Access (This.imageJList.getModel.getElementAt (index));
                bufferedImage := ImageUtil_Package.getInstance.createBufferedImage (bufferedImageArray (indexedImageIcon.getId), This.imageUnifierProperties.getImageUnifierCell.getWidth, This.imageUnifierProperties.getImageUnifierCell.getHeight, False);
                tempBufferedImageArray (index) := bufferedImage;
            end loop;
            totalImages := (This.imageUnifierProperties.getRows) * (This.imageUnifierProperties.getColumns);
            averageRatio := This.imagesRatioUtil.getAverage (tempBufferedImageArray, totalImages);
            fudgedBufferedImageArray := This.imagesRatioUtil.fudge (tempBufferedImageArray, totalImages, averageRatio);
            This.updateImage (fudgedBufferedImageArray);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageUnifierJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateImageWithFudgedImages"), e);
                end;
        end;
   end updateImageWithFudgedImages;

   procedure updateImage (This : in out ImageUnifierJPanel; tempBufferedImageArray : BufferedImage_Access_Array_Access) is
      image : Icon_Access;
      label : JLabel_Access;
   begin
        This.result := ImageUnifierUtil_Package.getInstance.getImage (tempBufferedImageArray, This.imageUnifierProperties);
        image := ImageIcon_Package.Create (This.result);
        label := JLabel_Package.Create (image);
        This.jScrollPane2.getViewport.add (label);
        This.updateUI;
   end updateImage;

   procedure updateOnPropertiesChange (This : in out ImageUnifierJPanel) is
      imageUnifierCell : ImageUnifierCell_Access;
      cellRatio : Long_Float;
      cellRatioString : Unbounded_String;
   begin
        if ((((This.rowsJTextField.getText.length) > (0)) and then ((This.columnsJTextField.getText.length) > (0))) and then ((This.cellWidthJTextField.getText.length) > (0))) and then ((This.cellHeightJTextField.getText.length) > (0)) then
            This.imageUnifierProperties := ImageUnifierProperties_Package.Create;
            This.imageUnifierProperties.setRows (This.rowsJTextField.getText);
            This.imageUnifierProperties.setColumns (This.columnsJTextField.getText);
            imageUnifierCell := ImageUnifierCell_Package.Create (This.cellWidthJTextField.getText, This.cellHeightJTextField.getText);
            This.imageUnifierProperties.setImageUnifierCell (imageUnifierCell);
            cellRatio := ((Long_Float (imageUnifierCell.getWidth)) / (imageUnifierCell.getHeight));
            cellRatioString := cellRatio.toString;
            if (Length (cellRatioString)) > (4) then
                cellRatioString := Unbounded_Slice (cellRatioString, (0) + 1, 4);
            end if;
            This.cellRatioJTextField.setText (cellRatioString);
            This.updateImage;
        end if;
   end updateOnPropertiesChange;

   procedure initComponents (This : in out ImageUnifierJPanel) is
      commonPhoneStrings : CommonPhoneStrings_Access;
      jPanel1Layout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
        This.jScrollPane1 := JScrollPane_Package.Create;
        This.imageJList := JList_Package.Create;
        This.jScrollPane2 := JScrollPane_Package.Create;
        This.jPanel1 := JPanel_Package.Create;
        This.jButton1 := JButton_Package.Create;
        This.upJButton := JButton_Package.Create;
        This.downJButton := JButton_Package.Create;
        This.fudgeItJButton := JButton_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        This.columnsJTextField := JTextField_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.rowsJTextField := JTextField_Package.Create;
        This.jLabel3 := JLabel_Package.Create;
        This.cellWidthJTextField := JTextField_Package.Create;
        This.jLabel4 := JLabel_Package.Create;
        This.cellHeightJTextField := JTextField_Package.Create;
        This.jLabel5 := JLabel_Package.Create;
        This.cellRatioJTextField := JTextField_Package.Create;
        This.jLabel6 := JLabel_Package.Create;
        This.avgRatioJTextField := JTextField_Package.Create;
        This.jButton2 := JButton_Package.Create;
        This.jButtonOrder := JButton_Package.Create;
        This.setMinimumSize (Dimension_Package.Create (500, 375));
        This.setPreferredSize (Dimension_Package.Create (0, 0));
        This.imageJList.setMinimumSize (Dimension_Package.Create (50, 0));
        This.jScrollPane1.setViewportView (This.imageJList);
        This.jButton1.setText (To_Unbounded_String ("Save"));
        This.jButton1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.jButton1ActionPerformed (evt);
--     end actionPerformed;
);
        This.upJButton.setText (To_Unbounded_String ("Up"));
        This.upJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.upJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.downJButton.setText (To_Unbounded_String ("Down"));
        This.downJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.downJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.fudgeItJButton.setText (To_Unbounded_String ("Fudge It!"));
        This.fudgeItJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.fudgeItJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel2.setText (To_Unbounded_String ("Columns:"));
        This.columnsJTextField.setText (commonPhoneStrings.TWO);
        This.columnsJTextField.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.columnsJTextFieldActionPerformed (evt);
--     end actionPerformed;
);
        This.columnsJTextField.addPropertyChangeListener (PropertyChangeListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure propertyChange (This : in out ; evt_Param : access PropertyChangeEvent_Package.PropertyChangeEvent'Class) is
--        evt : constant PropertyChangeEvent_Access := PropertyChangeEvent_Access (evt_Param);
--     begin
--                  This.columnsJTextFieldPropertyChange (evt);
--     end propertyChange;
);
        This.columnsJTextField.addKeyListener (KeyAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure keyPressed (This : in out ; evt_Param : access KeyEvent_Package.KeyEvent'Class) is
--        evt : constant KeyEvent_Access := KeyEvent_Access (evt_Param);
--     begin
--                  This.columnsJTextFieldKeyPressed (evt);
--     end keyPressed;
--              
--     procedure keyTyped (This : in out ; evt_Param : access KeyEvent_Package.KeyEvent'Class) is
--        evt : constant KeyEvent_Access := KeyEvent_Access (evt_Param);
--     begin
--                  This.columnsJTextFieldKeyTyped (evt);
--     end keyTyped;
);
        This.jLabel1.setText (To_Unbounded_String ("Rows:"));
        This.rowsJTextField.setText (commonPhoneStrings.TWO);
        This.rowsJTextField.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.rowsJTextFieldActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel3.setText (To_Unbounded_String ("Cell Width:"));
        This.cellWidthJTextField.setText (To_Unbounded_String ("200"));
        This.cellWidthJTextField.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.cellWidthJTextFieldActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel4.setText (To_Unbounded_String ("Cell Height:"));
        This.cellHeightJTextField.setText (To_Unbounded_String ("150"));
        This.cellHeightJTextField.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.cellHeightJTextFieldActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel5.setText (To_Unbounded_String ("Cell Ratio:"));
        This.cellRatioJTextField.setEditable (False);
        This.jLabel6.setText (To_Unbounded_String ("Avg Image Ratio:"));
        This.avgRatioJTextField.setEditable (False);
        This.jButton2.setText (This.commonStrings.UPDATE);
        This.jButton2.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.jButton2ActionPerformed (evt);
--     end actionPerformed;
);
        This.jButtonOrder.setText (To_Unbounded_String ("Order"));
        This.jButtonOrder.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.jButtonOrderActionPerformed (evt);
--     end actionPerformed;
);
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup.addContainerGap.addGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING).addComponent (This.jButton1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addGroup (jPanel1Layout.createSequentialGroup.addComponent (This.upJButton, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 71, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 10, Short_Package.MAX_VALUE).addComponent (This.downJButton, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 70, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addComponent (This.fudgeItJButton, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup.addComponent (This.jLabel3).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 99, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup.addComponent (This.jLabel4).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 96, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addComponent (This.avgRatioJTextField, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addComponent (This.jLabel6, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addComponent (This.cellRatioJTextField, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addComponent (This.jLabel5, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addComponent (This.cellHeightJTextField, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addComponent (This.cellWidthJTextField, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addComponent (This.jButton2, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE).addGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup.addGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jLabel2).addComponent (This.jLabel1)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.rowsJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 103, Short_Package.MAX_VALUE).addGroup (jPanel1Layout.createSequentialGroup.addComponent (This.columnsJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 102, Short_Package.MAX_VALUE).addGap (1, 1, 1)))).addComponent (This.jButtonOrder, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 151, Short_Package.MAX_VALUE)).addContainerGap));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel1Layout.createSequentialGroup.addContainerGap.addComponent (This.jButton1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.upJButton).addComponent (This.downJButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jButtonOrder).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.fudgeItJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel2).addComponent (This.columnsJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.rowsJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel3).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.cellWidthJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel4).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.cellHeightJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jButton2).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel5).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addComponent (This.cellRatioJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addGap (7, 7, 7).addComponent (This.jLabel6).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.avgRatioJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addGap (66, 66, 66)));
        layout := GroupLayout_Package.Create (ImageUnifierJPanel_Access'(This'Unchecked_Access));
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jScrollPane1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 84, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jScrollPane2, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 527, Short_Package.MAX_VALUE)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.Alignment.LEADING, 0, 445, Short_Package.MAX_VALUE).addComponent (This.jScrollPane2, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 445, Short_Package.MAX_VALUE).addComponent (This.jScrollPane1, javax_Package.swing.GroupLayout.Alignment.LEADING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 445, Short_Package.MAX_VALUE)).addContainerGap));
   end initComponents;

   procedure jButton2ActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.updateOnPropertiesChange;
   end jButton2ActionPerformed;

   procedure columnsJTextFieldKeyPressed (This : in out ImageUnifierJPanel; evt_Param : access KeyEvent_Package.KeyEvent'Class) is
      evt : constant KeyEvent_Access := KeyEvent_Access (evt_Param);
   begin
        null;
   end columnsJTextFieldKeyPressed;

   procedure columnsJTextFieldKeyTyped (This : in out ImageUnifierJPanel; evt_Param : access KeyEvent_Package.KeyEvent'Class) is
      evt : constant KeyEvent_Access := KeyEvent_Access (evt_Param);
   begin
        null;
   end columnsJTextFieldKeyTyped;

   procedure columnsJTextFieldPropertyChange (This : in out ImageUnifierJPanel; evt_Param : access PropertyChangeEvent_Package.PropertyChangeEvent'Class) is
      evt : constant PropertyChangeEvent_Access := PropertyChangeEvent_Access (evt_Param);
   begin
        null;
   end columnsJTextFieldPropertyChange;

   procedure fudgeItJButtonActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.updateImageWithFudgedImages;
   end fudgeItJButtonActionPerformed;

   procedure cellHeightJTextFieldActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.updateOnPropertiesChange;
   end cellHeightJTextFieldActionPerformed;

   procedure cellWidthJTextFieldActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.updateOnPropertiesChange;
   end cellWidthJTextFieldActionPerformed;

   procedure columnsJTextFieldActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.updateOnPropertiesChange;
   end columnsJTextFieldActionPerformed;

   procedure rowsJTextFieldActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.updateOnPropertiesChange;
   end rowsJTextFieldActionPerformed;

   procedure jButton1ActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      fileArray : File_Access_Array_Access;
      file : File_Access;
      filePath : Unbounded_String;
      extensionIndex : Integer;
      outputFile : File_Access;
   begin
        begin
            fileArray := This.imageProcessorInput.getFiles;
            file := fileArray (0);
            filePath := file.getAbsolutePath;
            extensionIndex := (Index (filePath, To_String (This.imageStrings.PNG_EXTENSION)) - 1);
            filePath := StringMaker_Package.Create.append (Unbounded_Slice (filePath, (0) + 1, extensionIndex)).append (CommonSeps_Package.getInstance.UNDERSCORE).appendint (Integer (This.imageUnifierProperties.getColumns)).append (To_Unbounded_String ("_By_")).appendint (Integer (This.imageUnifierProperties.getRows)).append (To_Unbounded_String ("_Unified")).append (This.imageStrings.PNG_EXTENSION).toString;
            This.logUtil.putF (To_Unbounded_String ("New File Path: ") & filePath, ImageUnifierJPanel_Access'(This'Unchecked_Access), StringUtil_Package.getInstance.EMPTY_STRING);
            outputFile := File_Package.Create (filePath);
            ImagePersistanceUtil_Package.getInstance.saveWithBatik (FileWrapperUtil_Package.wrapFile (outputFile), This.result);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageUnifierJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("jButton1ActionPerformed"), e);
                end;
        end;
   end jButton1ActionPerformed;

   procedure downJButtonActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      index : Integer;
      defaultListModel : DefaultListModel_Access;
      indexedImageIcon : ImageIconUnique_Access;
   begin
        index := This.imageJList.getSelectedIndex;
        defaultListModel := DefaultListModel_Access (This.imageJList.getModel);
        if ((index) >= (0)) and then (((index) + (1)) < (defaultListModel.size)) then
            indexedImageIcon := ImageIconUnique_Access (defaultListModel.remove (index));
            defaultListModel.insertElementAt (indexedImageIcon, (index) + (1));
            This.imageJList.setSelectedIndex ((index) + (1));
            This.updateImage;
        end if;
   end downJButtonActionPerformed;

   procedure upJButtonActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      index : Integer;
      defaultListModel : DefaultListModel_Access;
      indexedImageIcon : ImageIconUnique_Access;
   begin
        index := This.imageJList.getSelectedIndex;
        if (index) > (0) then
            defaultListModel := DefaultListModel_Access (This.imageJList.getModel);
            indexedImageIcon := ImageIconUnique_Access (defaultListModel.remove (index));
            defaultListModel.insertElementAt (indexedImageIcon, (index) - (1));
            This.imageJList.setSelectedIndex ((index) - (1));
            This.updateImage;
        end if;
   end upJButtonActionPerformed;

   procedure jButtonOrderActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      defaultListModel : DefaultListModel_Access;
      size : Integer;
      last : Integer;
      indexedImageIcon : ImageIconUnique_Access;
      index : Integer;
   begin
        defaultListModel := DefaultListModel_Access (This.imageJList.getModel);
        size := defaultListModel.size;
        last := (size) - (1);
        for index in reverse 0 .. last loop
            indexedImageIcon := ImageIconUnique_Access (defaultListModel.remove (last));
            defaultListModel.insertElementAt (indexedImageIcon, (last) - (index));
        end loop;
        if (size) > (0) then
            This.imageJList.setSelectedIndex (0);
            This.updateImage;
        end if;
   end jButtonOrderActionPerformed;

   function getImageProcessorInput (This : in out ImageUnifierJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out ImageUnifierJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        This.imageProcessorInput := imageProcessorInput;
        This.init;
   end setImageProcessorInput;

end org.allbinary.image.gui.ImageUnifierJPanel_Package;



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


package body org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package is

   procedure Initialize_Fields (This : in out ToolJPanel'Class) is
   begin
      null;
      This.arcJButton := null;
      This.charJButton := null;
      This.colorJList := null;
      This.colorJPanel := null;
      This.dottedArcJButton := null;
      This.dottedFillArcJButton := null;
      This.dottedFillRectJButton := null;
      This.dottedFillRountRectJButton := null;
      This.dottedLineJButton := null;
      This.dottedRectButton := null;
      This.fillArcJButton := null;
      This.fillRectJButton := null;
      This.fillRoundRectJButton := null;
      This.imageJButton := null;
      This.lineJButton := null;
      This.rectJButton := null;
      This.roundRectJButton := null;
      This.stringJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ToolJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create return ToolJPanel_Access is
      This : constant ToolJPanel_Access := new ToolJPanel;
   begin
      ToolJPanel_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initComponents (This : in out ToolJPanel) is
   begin
        This.lineJButton := JButton_Package.Create;
        This.rectJButton := JButton_Package.Create;
        This.arcJButton := JButton_Package.Create;
        This.stringJButton := JButton_Package.Create;
        This.charJButton := JButton_Package.Create;
        This.roundRectJButton := JButton_Package.Create;
        This.imageJButton := JButton_Package.Create;
        This.fillArcJButton := JButton_Package.Create;
        This.fillRectJButton := JButton_Package.Create;
        This.fillRoundRectJButton := JButton_Package.Create;
        This.dottedLineJButton := JButton_Package.Create;
        This.dottedRectButton := JButton_Package.Create;
        This.dottedArcJButton := JButton_Package.Create;
        This.dottedFillRectJButton := JButton_Package.Create;
        This.dottedFillArcJButton := JButton_Package.Create;
        This.dottedFillRountRectJButton := JButton_Package.Create;
        This.colorJPanel := JPanel_Package.Create;
        This.colorJList := JList_Package.Create;
        This.setLayout (GridLayout_Package.Create (17, 1));
        This.lineJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.lineJButton.setText (LinesGraphicItem_Package.getStaticName);
        This.lineJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mouseClicked (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.lineJButtonMouseClicked (evt);
--     end mouseClicked;
);
        This.add (This.lineJButton);
        This.rectJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.rectJButton.setText (To_Unbounded_String ("Rect"));
        This.rectJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mouseClicked (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.rectJButtonMouseClicked (evt);
--     end mouseClicked;
);
        This.add (This.rectJButton);
        This.arcJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.arcJButton.setText (To_Unbounded_String ("Arc"));
        This.arcJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.arcJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.arcJButton);
        This.stringJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.stringJButton.setText (To_Unbounded_String ("String"));
        This.stringJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.stringJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.stringJButton);
        This.charJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.charJButton.setText (To_Unbounded_String ("Char"));
        This.charJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.charJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.charJButton);
        This.roundRectJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.roundRectJButton.setText (To_Unbounded_String ("Round Rect"));
        This.roundRectJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.roundRectJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.roundRectJButton);
        This.imageJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.imageJButton.setText (To_Unbounded_String ("Image"));
        This.imageJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.imageJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.imageJButton);
        This.fillArcJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.fillArcJButton.setText (To_Unbounded_String ("Fill Arc"));
        This.fillArcJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.fillArcJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.fillArcJButton);
        This.fillRectJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.fillRectJButton.setText (To_Unbounded_String ("Fill Rect"));
        This.fillRectJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.fillRectJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.fillRectJButton);
        This.fillRoundRectJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.fillRoundRectJButton.setText (To_Unbounded_String ("Fill Rnd Rect"));
        This.fillRoundRectJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.fillRoundRectJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.fillRoundRectJButton);
        This.dottedLineJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.dottedLineJButton.setText (To_Unbounded_String ("Dot Line"));
        This.dottedLineJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.dottedLineJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.dottedLineJButton);
        This.dottedRectButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.dottedRectButton.setText (To_Unbounded_String ("Dot Rect"));
        This.dottedRectButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.dottedRectButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.dottedRectButton);
        This.dottedArcJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.dottedArcJButton.setText (To_Unbounded_String ("Dot Arc"));
        This.dottedArcJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.dottedArcJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.dottedArcJButton);
        This.dottedFillRectJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.dottedFillRectJButton.setText (To_Unbounded_String ("Dot Fill Rect"));
        This.dottedFillRectJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.dottedFillRectJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.dottedFillRectJButton);
        This.dottedFillArcJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.dottedFillArcJButton.setText (To_Unbounded_String ("Dot Fill Arc"));
        This.dottedFillArcJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.dottedFillArcJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.dottedFillArcJButton);
        This.dottedFillRountRectJButton.setFont (Font_Package.Create (To_Unbounded_String ("Dialog"), 0, 10));
        This.dottedFillRountRectJButton.setText (To_Unbounded_String ("Dot Fill Rnd Rect"));
        This.dottedFillRountRectJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.dottedFillRountRectJButtonMousePressed (evt);
--     end mousePressed;
);
        This.add (This.dottedFillRountRectJButton);
        This.colorJPanel.setLayout (GridLayout_Package.Create (1, 1));
        This.colorJPanel.add (This.colorJList);
        This.add (This.colorJPanel);
   end initComponents;

   procedure dottedFillRountRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.dottedFillRountRectJButton.getText);
   end dottedFillRountRectJButtonMousePressed;

   procedure dottedFillArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.dottedFillArcJButton.getText);
   end dottedFillArcJButtonMousePressed;

   procedure dottedFillRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.dottedFillRectJButton.getText);
   end dottedFillRectJButtonMousePressed;

   procedure dottedArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.dottedArcJButton.getText);
   end dottedArcJButtonMousePressed;

   procedure dottedRectButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.dottedRectButton.getText);
   end dottedRectButtonMousePressed;

   procedure dottedLineJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.dottedLineJButton.getText);
   end dottedLineJButtonMousePressed;

   procedure fillRoundRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.fillRoundRectJButton.getText);
   end fillRoundRectJButtonMousePressed;

   procedure fillRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.fillRectJButton.getText);
   end fillRectJButtonMousePressed;

   procedure fillArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.fillArcJButton.getText);
   end fillArcJButtonMousePressed;

   procedure imageJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.imageJButton.getText);
   end imageJButtonMousePressed;

   procedure roundRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.roundRectJButton.getText);
   end roundRectJButtonMousePressed;

   procedure charJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.charJButton.getText);
   end charJButtonMousePressed;

   procedure stringJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.stringJButton.getText);
   end stringJButtonMousePressed;

   procedure arcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.arcJButton.getText);
   end arcJButtonMousePressed;

   procedure rectJButtonMouseClicked (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.rectJButton.getText);
   end rectJButtonMouseClicked;

   procedure lineJButtonMouseClicked (This : in out ToolJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        ToolFactory_Package.getInstance.setSelectedTool (This.lineJButton.getText);
   end lineJButtonMouseClicked;

end org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package;



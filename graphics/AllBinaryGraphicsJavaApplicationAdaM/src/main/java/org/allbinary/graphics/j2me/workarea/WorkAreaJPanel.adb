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


package body org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package is

   procedure Initialize_Fields (This : in out WorkAreaJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.canvasJPanelList := null;
      This.canvasHolderJPanel := null;
      This.name := Null_Unbounded_String;
      This.selectedFrame := 0;
      This.propertiesJPanel := null;
      This.workAreaJTreeJPanel := null;
      This.isPlaying := False;
      This.innerJPanel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkAreaJPanel'Class; name : Unbounded_String; dimension : Dimension_Access; x : Integer; y : Integer) is
      canvasJPanel : CanvasJPanel_Access;
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        begin
            This.initComponents;
            This.name := name;
            This.initMyComponents (dimension);
            This.workAreaJTreeJPanel := WorkAreaJTreeJPanel_Package.Create (This.name);
            canvasJPanel := CanvasJPanel_Package.Create (This.workAreaJTreeJPanel, This.getSize, x, y);
            This.canvasJPanelList.add (canvasJPanel);
            This.selectedFrame := 0;
            This.propertiesJPanel.set (This.workAreaJTreeJPanel);
            This.canvasHolderJPanel.add (Component_Access (canvasJPanel));
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end Initialize;

   function Create (name : Unbounded_String; dimension : Dimension_Access; x : Integer; y : Integer) return WorkAreaJPanel_Access is
      This : constant WorkAreaJPanel_Access := new WorkAreaJPanel;
   begin
      Initialize (This.all, name, dimension, x, y);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out WorkAreaJPanel'Class; workAreaDom : WorkAreaDom_Access; dimension : Dimension_Access) is
      canvasNodeList : BasicArrayList_Access;
      numberOfFrames : Integer;
      node : Node_Access;
      canvasJPanel : CanvasJPanel_Access;
      index : Integer;
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        begin
            This.initComponents;
            This.name := workAreaDom.getName;
            This.initMyComponents (dimension);
            canvasNodeList := workAreaDom.getCanvasNodes;
            numberOfFrames := canvasNodeList.size;
            for index in 0 .. (numberOfFrames) - 1 loop
                node := Node_Access (canvasNodeList.get (index));
                canvasJPanel := CanvasJPanel_Package.Create (This.workAreaJTreeJPanel, This.getSize, CanvasDom_Package.Create (node));
                This.canvasJPanelList.add (canvasJPanel);
            end loop;
            This.selectedFrame := 0;
            This.canvasHolderJPanel.add (Component_Access (This.getCurrentFrame));
            This.propertiesJPanel.set (This.workAreaJTreeJPanel);
        exception
            when e : others =>
            if LOGGING.contains (LOGGING.LOADINGERROR) then
                This.logUtil.put (To_Unbounded_String ("Constructor Error"), This'Unchecked_Access, To_Unbounded_String ("WorkAreaJPanel"), e);
            end if;
            Java_Throw (e);
        end;
   end Initialize;

   function Create (workAreaDom : WorkAreaDom_Access; dimension : Dimension_Access) return WorkAreaJPanel_Access is
      This : constant WorkAreaJPanel_Access := new WorkAreaJPanel;
   begin
      Initialize (This.all, workAreaDom, dimension);
      return This;
   end Create;

   procedure initMyComponents (This : in out WorkAreaJPanel; dimension : Dimension_Access) is
      gridBagLayout : GridBagLayout_Access;
      gridBagConstraints : GridBagConstraints_Access;
      toolJPanel : ToolJPanel_Access;
   begin
        This.workAreaJTreeJPanel := WorkAreaJTreeJPanel_Package.Create (This.name);
        This.canvasHolderJPanel := JPanel_Package.Create;
        This.canvasHolderJPanel.setSize (dimension);
        This.canvasHolderJPanel.setLayout (GridLayout_Package.Create (1, 1));
        This.setSize (dimension);
        This.canvasJPanelList := LinkedList_Package.Create;
        gridBagLayout := GridBagLayout_Package.Create;
        gridBagConstraints := GridBagConstraints_Package.Create;
        This.innerJPanel.setLayout (gridBagLayout);
        gridBagConstraints.gridx := 0;
        gridBagConstraints.gridy := 0;
        gridBagConstraints.gridwidth := 1;
        gridBagConstraints.fill := java_Package.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx := 0.05;
        gridBagConstraints.weighty := 0.05;
        toolJPanel := ToolJPanel_Package.Create;
        gridBagLayout.setConstraints (toolJPanel, gridBagConstraints);
        This.innerJPanel.add (toolJPanel);
        gridBagConstraints := GridBagConstraints_Package.Create;
        gridBagConstraints.gridx := 1;
        gridBagConstraints.gridy := 0;
        gridBagConstraints.gridwidth := 6;
        gridBagConstraints.fill := java_Package.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx := 1;
        gridBagConstraints.weighty := 1;
        gridBagLayout.setConstraints (This.canvasHolderJPanel, gridBagConstraints);
        This.innerJPanel.add (This.canvasHolderJPanel);
        gridBagConstraints := GridBagConstraints_Package.Create;
        gridBagConstraints.gridx := 8;
        gridBagConstraints.gridy := 0;
        gridBagConstraints.gridwidth := java_Package.awt.GridBagConstraints.REMAINDER;
        gridBagConstraints.fill := java_Package.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx := 0.1;
        gridBagConstraints.weighty := 0.1;
        This.propertiesJPanel := PropertiesJPanel_Package.Create;
        gridBagLayout.setConstraints (This.propertiesJPanel, gridBagConstraints);
        This.innerJPanel.add (This.propertiesJPanel);
        MyCanvasEventService_Package.addListener (MyCanvasEventListener_Access (This'Unchecked_Access));
   end initMyComponents;

   function getCanvasHashMap (This : in out WorkAreaJPanel) return HashMap_Access is
      canvasJPanelHashMap : HashMap_Access;
      size : Integer;
      canvasJPanel : CanvasJPanel_Access;
      index : Integer;
   begin
        canvasJPanelHashMap := StdUtil_Package.getInstance.createHashMap;
        size := This.canvasJPanelList.size;
        for index in 0 .. (size) - 1 loop
            canvasJPanel := CanvasJPanel_Access (This.canvasJPanelList.get (index));
            canvasJPanelHashMap.put (canvasJPanel.getTreeNode, index);
        end loop;
        return canvasJPanelHashMap;
   end getCanvasHashMap;

   procedure play (This : in out WorkAreaJPanel) is
   begin
        This.isPlaying := True;
   end play;

   procedure stop (This : in out WorkAreaJPanel) is
   begin
        This.isPlaying := False;
   end stop;

   function isPlaying (This : in out WorkAreaJPanel) return Boolean is
   begin
        return This.isPlaying;
   end isPlaying;

   function getName (This : in out WorkAreaJPanel) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out WorkAreaJPanel; value : Unbounded_String) is
   begin
        This.name := value;
   end setName;

   procedure disableCanvas (This : in out WorkAreaJPanel) is
   begin
        This.canvasHolderJPanel.removeAll;
   end disableCanvas;

   procedure enableCanvas (This : in out WorkAreaJPanel) is
   begin
        This.canvasHolderJPanel.add (Component_Access (This.getCurrentFrame));
   end enableCanvas;

   procedure deselect (This : in out WorkAreaJPanel) is
   begin
        JPanel (This).setVisible (False);
   end deselect;

   procedure select_Id (This : in out WorkAreaJPanel) is
      component : Component_Access;
   begin
        JPanel (This).setVisible (True);
        if (This.canvasHolderJPanel.getComponentCount) = (1) then
            component := This.canvasHolderJPanel.getComponent (0);
            if (component) /= (null) then
                component.repaint;
            end if;
        end if;
   end select_Id;

   procedure changeZoom (This : in out WorkAreaJPanel; factor : Integer) is
      size : Integer;
      canvasJPanel : CanvasJPanel_Access;
      index : Integer;
   begin
        size := This.canvasJPanelList.size;
        for index in 0 .. (size) - 1 loop
            canvasJPanel := CanvasJPanel_Access (This.canvasJPanelList.get (index));
            canvasJPanel.getGrid.setZoom ((canvasJPanel.getGrid.getZoom) + (factor));
        end loop;
   end changeZoom;

   function getCurrentFrame (This : in out WorkAreaJPanel) return CanvasJPanel_Access is
   begin
        return CanvasJPanel_Access (This.canvasJPanelList.get (This.selectedFrame));
   end getCurrentFrame;

   procedure initDuplicate (This : in out WorkAreaJPanel; newCanvasJPanel : CanvasJPanel_Access) is
   begin
        if (newCanvasJPanel) /= (null) then
            This.canvasJPanelList.add (newCanvasJPanel);
            This.select_Id ((This.canvasJPanelList.size) - (1));
        end if;
   end initDuplicate;

   --  throws Exception
   procedure duplicate (This : in out WorkAreaJPanel; treeNode : MutableTreeNode_Access) is
      canvasJPanelHashMap : HashMap_Access;
      frameInteger : Integer;
      canvasJPanel : CanvasJPanel_Access;
   begin
        canvasJPanelHashMap := This.getCanvasHashMap;
        if canvasJPanelHashMap.containsKey (treeNode) then
            frameInteger := Integer (canvasJPanelHashMap.get (treeNode));
            canvasJPanel := CanvasJPanel_Access (This.canvasJPanelList.get (frameInteger.intValue));
            This.initDuplicate (canvasJPanel.duplicate);
        end if;
   end duplicate;

   --  throws Exception
   procedure autoRotate (This : in out WorkAreaJPanel; increments : Integer; totalAngle : Integer) is
      incrementAngle : Integer;
      canvasJPanel : CanvasJPanel_Access;
      newCanvasJPanel : CanvasJPanel_Access;
      index : Integer;
   begin
        incrementAngle := ((totalAngle) / (increments));
        for index in 1 .. (increments) - 1 loop
            canvasJPanel := CanvasJPanel_Access (This.getCurrentFrame);
            newCanvasJPanel := canvasJPanel.duplicate;
            newCanvasJPanel.setAngle ((incrementAngle) * (index));
            This.initDuplicate (newCanvasJPanel);
        end loop;
   end autoRotate;

   procedure explodeAll (This : in out WorkAreaJPanel) is
      canvasJPanel : CanvasJPanel_Access;
   begin
        canvasJPanel := CanvasJPanel_Access (This.getCurrentFrame);
        canvasJPanel.explodeAll;
   end explodeAll;

   --  throws Exception
   procedure autoExplode (This : in out WorkAreaJPanel; numberOfFrames : Integer; explodeType : Integer) is
      canvasJPanel : CanvasJPanel_Access;
      newCanvasJPanel : CanvasJPanel_Access;
      index : Integer;
   begin
        for index in 1 .. (numberOfFrames) - 1 loop
            canvasJPanel := CanvasJPanel_Access (This.getCurrentFrame);
            newCanvasJPanel := canvasJPanel.duplicate;
            newCanvasJPanel.explode ((index) + (1), explodeType);
            This.initDuplicate (newCanvasJPanel);
        end loop;
   end autoExplode;

   --  throws Exception
   procedure autoMirror (This : in out WorkAreaJPanel) is
      canvasJPanel : CanvasJPanel_Access;
      newCanvasJPanel : CanvasJPanel_Access;
   begin
        canvasJPanel := CanvasJPanel_Access (This.getCurrentFrame);
        newCanvasJPanel := canvasJPanel.duplicate;
        newCanvasJPanel.mirror;
        This.initDuplicate (newCanvasJPanel);
   end autoMirror;

   procedure select_Id (This : in out WorkAreaJPanel; index : Integer) is
      canvasJPanel : CanvasJPanel_Access;
   begin
        if (index) < (This.canvasJPanelList.size) then
            canvasJPanel := CanvasJPanel_Access (This.canvasJPanelList.get (index));
            if (canvasJPanel) /= (null) then
                This.canvasHolderJPanel.removeAll;
                This.canvasHolderJPanel.add (canvasJPanel);
                This.selectedFrame := index;
                canvasJPanel.changed;
                This.canvasHolderJPanel.repaint;
                canvasJPanel.repaint;
            end if;
        end if;
   end select_Id;

   procedure select_Id (This : in out WorkAreaJPanel; treeNode : MutableTreeNode_Access) is
      canvasJPanelHashMap : HashMap_Access;
      frameInteger : Integer;
   begin
        canvasJPanelHashMap := This.getCanvasHashMap;
        frameInteger := Integer (canvasJPanelHashMap.get (treeNode));
        if (frameInteger) /= (null) then
            This.select_Id (frameInteger.intValue);
        end if;
   end select_Id;

   function getDocument return Document_Access is
   begin
        return WorkAreaJPanel_Package.document;
   end getDocument;

   --  throws Exception
   function toDocument (This : in out WorkAreaJPanel) return Document_Access is
      workAreaNode : Node_Access;
      nameNode : Node_Access;
      nameTextNode : Node_Access;
      framesNode : Node_Access;
      size : Integer;
      canvasJPanel : CanvasJPanel_Access;
      index : Integer;
   begin
        WorkAreaJPanel_Package.document := DomHelper_Package.getInstance.createDocument;
        workAreaNode := WorkAreaJPanel_Package.document.createElement (WorkAreaDom_Package.WORKAREA);
        nameNode := WorkAreaJPanel_Package.document.createElement (WorkAreaDom_Package.NAME);
        nameTextNode := WorkAreaJPanel_Package.document.createTextNode (This.name);
        nameNode.appendChild (nameTextNode);
        framesNode := WorkAreaJPanel_Package.document.createElement (WorkAreaDom_Package.FRAMES);
        size := This.canvasJPanelList.size;
        for index in 0 .. (size) - 1 loop
            canvasJPanel := CanvasJPanel_Access (This.canvasJPanelList.get (index));
            framesNode.appendChild (canvasJPanel.toDom);
        end loop;
        workAreaNode.appendChild (nameNode);
        workAreaNode.appendChild (framesNode);
        WorkAreaJPanel_Package.document.appendChild (workAreaNode);
        return document;
   end toDocument;

   procedure initComponents (This : in out WorkAreaJPanel) is
   begin
        This.innerJPanel := JPanel_Package.Create;
        This.setLayout (GridLayout_Package.Create (1, 1));
        This.innerJPanel.addKeyListener (KeyAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure keyTyped (This : in out ; evt : KeyEvent_Access) is
--     begin
--                  This.innerJPanelKeyTyped (evt);
--     end keyTyped;
--              
--     procedure keyPressed (This : in out ; evt : KeyEvent_Access) is
--     begin
--                  This.innerJPanelKeyPressed (evt);
--     end keyPressed;
--              
--     procedure keyReleased (This : in out ; evt : KeyEvent_Access) is
--     begin
--                  This.innerJPanelKeyReleased (evt);
--     end keyReleased;
);
        This.add (This.innerJPanel);
   end initComponents;

   procedure innerJPanelKeyReleased (This : in out WorkAreaJPanel; evt : KeyEvent_Access) is
   begin
        StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Key Pressed1"));
   end innerJPanelKeyReleased;

   procedure innerJPanelKeyPressed (This : in out WorkAreaJPanel; evt : KeyEvent_Access) is
   begin
        StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Key Pressed2"));
   end innerJPanelKeyPressed;

   procedure innerJPanelKeyTyped (This : in out WorkAreaJPanel; evt : KeyEvent_Access) is
   begin
        StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Key Pressed3"));
   end innerJPanelKeyTyped;

   procedure keyPressed (This : in out WorkAreaJPanel; keyEvent : KeyEvent_Access) is
   begin
        This.getCurrentFrame.keyPressed (keyEvent);
   end keyPressed;

   procedure keyReleased (This : in out WorkAreaJPanel; keyEvent : KeyEvent_Access) is
   begin
        null;
   end keyReleased;

   procedure keyTyped (This : in out WorkAreaJPanel; keyEvent : KeyEvent_Access) is
   begin
        null;
   end keyTyped;

   procedure delete (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access) is
      canvasJPanelHashMap : HashMap_Access;
      frameInt : Integer;
   begin
        canvasJPanelHashMap := This.getCanvasHashMap;
        if canvasJPanelHashMap.containsKey (evt.getTreeNode) then
            This.canvasHolderJPanel.removeAll;
            frameInt := Integer (canvasJPanelHashMap.get (evt.getTreeNode));
            This.canvasJPanelList.remove (frameInt.intValue);
            This.select_Id (frameInt.intValue);
        end if;
   end delete;

   --  throws Exception
   procedure duplicate (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access) is
   begin
        This.duplicate (evt.getTreeNode);
   end duplicate;

   procedure select_Id (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access) is
   begin
        This.select_Id (evt.getTreeNode);
        StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Frame Selected"));
   end select_Id;

   procedure rotate (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access) is
      canvasJPanelHashMap : HashMap_Access;
      treeNode : MutableTreeNode_Access;
      frameInt : Integer;
      canvasJPanel : CanvasJPanel_Access;
   begin
        canvasJPanelHashMap := This.getCanvasHashMap;
        treeNode := evt.getTreeNode;
        frameInt := Integer (canvasJPanelHashMap.get (evt.getTreeNode));
        canvasJPanel := CanvasJPanel_Access (This.canvasJPanelList.get (frameInt.intValue));
        if (canvasJPanel) /= (null) then
            canvasJPanel.addAngle (evt.getAngle);
            This.select_Id (frameInt.intValue);
        end if;
        StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Canvas Rotated"));
   end rotate;

   procedure explode (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access) is
   begin
        This.explodeAll;
   end explode;

   --  throws Exception
   procedure autoExplode (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access) is
   begin
        This.autoExplode (10, 0);
   end autoExplode;

   --  throws Exception
   procedure center (This : in out WorkAreaJPanel) is
      canvasJPanel : CanvasJPanel_Access;
   begin
        canvasJPanel := CanvasJPanel_Access (This.getCurrentFrame);
        canvasJPanel.center;
   end center;

   --  throws Exception
   procedure center (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access) is
   begin
        This.center;
   end center;

   procedure run (This : in out WorkAreaJPanel) is
      size : Integer;
      index : Integer;
   begin
        begin
            while True loop
                if This.isPlaying then
                    size := This.canvasJPanelList.size;
                    for index in 0 .. (size) - 1 loop
                        if not (This.isPlaying) then
                            exit;
                        end if;
                        This.select_Id (index);
                        Java_Sleep (100);
                    end loop;
                else
                    Java_Sleep (500);
                end if;
                Java_Sleep (250);
            end loop;
        exception
            when e : others =>
            null;
        end;
   end run;

   procedure getCanvasHashMap (This : in out WorkAreaJPanel) is
      Java_Result : constant HashMap_Access := WorkAreaJPanel'Class (This).getCanvasHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCanvasHashMap;

   procedure isPlaying (This : in out WorkAreaJPanel) is
      Java_Result : constant Boolean := WorkAreaJPanel'Class (This).isPlaying;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPlaying;

   procedure getName (This : in out WorkAreaJPanel) is
      Java_Result : constant Unbounded_String := WorkAreaJPanel'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getCurrentFrame (This : in out WorkAreaJPanel) is
      Java_Result : constant CanvasJPanel_Access := WorkAreaJPanel'Class (This).getCurrentFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentFrame;

   procedure getDocument is
      Java_Result : constant Document_Access := getDocument;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDocument;

   procedure toDocument (This : in out WorkAreaJPanel) is
      Java_Result : constant Document_Access := WorkAreaJPanel'Class (This).toDocument;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toDocument;

begin
   null;
   document := null;

end org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;



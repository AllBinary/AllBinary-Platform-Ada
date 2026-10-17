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


package body org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package is

   procedure Initialize_Fields (This : in out MouseActionScriptInput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.buttons := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MouseActionScriptInput'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
      nodeList : NodeList_Access;
      childNode : Node_Access;
      mouseXNode : Node_Access;
      mouseXString : Unbounded_String;
      mouseXInteger : Integer;
      mouseYNode : Node_Access;
      mouseYString : Unbounded_String;
      mouseYInteger : Integer;
      newPoint : Point_Access;
      buttons : Unbounded_String;
      index : Integer;
   begin
        BasicProfileActionScriptInput_Package.Initialize (This, NAME, node);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, MouseActionScriptInput_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.point := Point_Package.Create;
        actionNode := DomSearchHelper_Package.getNode (MouseActionScriptInputData_Package.NAME, node.getChildNodes);
        if (actionNode) /= (null) then
            nodeList := actionNode.getChildNodes;
            for index in 0 .. (nodeList.getLength) - 1 loop
                childNode := nodeList.item (index);
                if (childNode.getNodeName.compareTo (MouseActionScriptInputData_Package.BUTTONS)) = (0) then
                    buttons := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.setButtonClicks (To_Unbounded_String (Java_Image (buttons)).intValue);
                elsif (childNode.getNodeName.compareTo (MouseActionScriptInputData_Package.MOVE)) = (0) then
                    mouseXNode := DomSearchHelper_Package.getNode (MouseActionScriptInputData_Package.MOVE_X, childNode.getChildNodes);
                    mouseXString := DomNodeHelper_Package.getTextNodeValue (mouseXNode);
                    mouseXInteger := To_Unbounded_String (Java_Image (mouseXString));
                    mouseYNode := DomSearchHelper_Package.getNode (MouseActionScriptInputData_Package.MOVE_Y, childNode.getChildNodes);
                    mouseYString := DomNodeHelper_Package.getTextNodeValue (mouseYNode);
                    mouseYInteger := To_Unbounded_String (Java_Image (mouseYString));
                    newPoint := Point_Package.Create (mouseXInteger.intValue, mouseYInteger.intValue);
                    This.setPoint (newPoint);
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Input Unknown Node")));
                end if;
            end loop;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Input Node Null")));
        end if;
        This.setAllowsChildren (False);
        This.mouseActionScriptInputJPanel := MouseActionScriptInputJPanel_Package.Create (MouseActionScriptInput_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return MouseActionScriptInput_Access is
      This : constant MouseActionScriptInput_Access := new MouseActionScriptInput;
   begin
      MouseActionScriptInput_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out MouseActionScriptInput'Class) is
   begin
        BasicProfileActionScriptInput_Package.Initialize (This, NAME);
        Initialize_Fields (This);
        This.point := Point_Package.Create;
        This.setAllowsChildren (False);
        This.mouseActionScriptInputJPanel := MouseActionScriptInputJPanel_Package.Create (MouseActionScriptInput_Access'(This'Unchecked_Access));
   end Initialize;

   function Create return MouseActionScriptInput_Access is
      This : constant MouseActionScriptInput_Access := new MouseActionScriptInput;
   begin
      MouseActionScriptInput_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setPoint (This : in out MouseActionScriptInput; point_Param : access Point_Package.Point'Class) is
      point : constant Point_Access := Point_Access (point_Param);
   begin
        This.point := point;
   end setPoint;

   function getPoint (This : in out MouseActionScriptInput) return Point_Access is
   begin
        return This.point;
   end getPoint;

   function getButtonClicks (This : in out MouseActionScriptInput) return Integer is
   begin
        return This.buttons;
   end getButtonClicks;

   procedure setButtonClicks (This : in out MouseActionScriptInput; buttons : Integer) is
   begin
        This.buttons := buttons;
   end setButtonClicks;

   procedure showDialog (This : in out MouseActionScriptInput) is
   begin
        This.mouseActionScriptInputJPanel.getMouseActionJDialog.setVisible (True);
   end showDialog;

   function toHashMap (This : in out MouseActionScriptInput) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (MouseActionScriptInputData_Package.BUTTONS, To_Unbounded_String (Java_Image (This.getButtonClicks)));
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, MouseActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out MouseActionScriptInput; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      mouseNode : Node_Access;
      hashMap : HashMap_Access;
   begin
        node := BasicProfileActionScriptInput (This).toXmlNode (document);
        mouseNode := ModDomHelper_Package.createNodeWithValueNodes (document, MouseActionScriptInputData_Package.NAME, This.toHashMap);
        node.appendChild (mouseNode);
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (MouseActionScriptInputData_Package.MOVE_X, To_Unbounded_String (Java_Image (This.getPoint.x)));
        hashMap.put (MouseActionScriptInputData_Package.MOVE_Y, To_Unbounded_String (Java_Image (This.getPoint.y)));
        mouseNode.appendChild (ModDomHelper_Package.createNodeWithValueNodes (document, MouseActionScriptInputData_Package.MOVE, hashMap));
        return node;
   end toXmlNode;

   --  throws Exception
   procedure process (This : in out MouseActionScriptInput; frame : Long_Long_Integer) is
   begin
        MouseInputAutomationProcessor_Package.process (MouseActionScriptInput_Access'(This'Unchecked_Access));
   end process;

   procedure log (This : in out MouseActionScriptInput) is
      buttonStringBuffer : StringMaker_Access;
      booleanFactory : BooleanFactory_Access;
   begin
        buttonStringBuffer := StringMaker_Package.Create;
        buttonStringBuffer.append (To_Unbounded_String ("1: "));
        booleanFactory := BooleanFactory_Package.getInstance;
        if ((Java_And (This.getButtonClicks, InputEvent_Package.BUTTON1_MASK))) /= (0) then
            buttonStringBuffer.append (booleanFactory.TRUE_STRING);
        else
            buttonStringBuffer.append (booleanFactory.FALSE_STRING);
        end if;
        buttonStringBuffer.append (To_Unbounded_String (" 2: "));
        if ((Java_And (This.getButtonClicks, InputEvent_Package.BUTTON2_MASK))) /= (0) then
            buttonStringBuffer.append (booleanFactory.TRUE_STRING);
        else
            buttonStringBuffer.append (booleanFactory.FALSE_STRING);
        end if;
        buttonStringBuffer.append (To_Unbounded_String (" 3: "));
        if ((Java_And (This.getButtonClicks, InputEvent_Package.BUTTON3_MASK))) /= (0) then
            buttonStringBuffer.append (booleanFactory.TRUE_STRING);
        else
            buttonStringBuffer.append (booleanFactory.FALSE_STRING);
        end if;
        This.logUtil.putF (To_Unbounded_String ("Input Type: ") & This.getInputRobotInterface.getName & To_Unbounded_String (" Point: ") & Java_Image (This.getPoint) & To_Unbounded_String (" Buttons Clicked: ") & buttonStringBuffer.toString, MouseActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
   end log;

   procedure toXmlNode (This : in out MouseActionScriptInput; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := MouseActionScriptInput'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   NAME := To_Unbounded_String ("Mouse");

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package;



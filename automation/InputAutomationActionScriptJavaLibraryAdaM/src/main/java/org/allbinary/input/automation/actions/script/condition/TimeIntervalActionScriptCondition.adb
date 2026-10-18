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


package body org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package is

   procedure Initialize_Fields (This : in out TimeIntervalActionScriptCondition'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.timeIntervalActionScriptConditionJPanel := null;
      This.timeHelper := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TimeIntervalActionScriptCondition'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
      nodeList : NodeList_Access;
      childNode : Node_Access;
      interval : Unbounded_String;
      index : Integer;
   begin
        BasicProfileActionScriptCondition_Package.Initialize (This, TimeIntervalActionScriptCondition_Package.NAME, node);
        Initialize_Fields (This);
        actionNode := DomSearchHelper_Package.getNode (TimeIntervalActionScriptConditionData_Package.NAME, node.getChildNodes);
        if (actionNode) /= (null) then
            nodeList := actionNode.getChildNodes;
            for index in 0 .. (nodeList.getLength) - 1 loop
                childNode := nodeList.item (index);
                if (childNode.getNodeName.compareTo (TimeIntervalActionScriptConditionData_Package.TIME)) = (0) then
                    interval := DomNodeHelper_Package.getTextNodeValue (childNode);
                    TimeIntervalActionScriptCondition'Class (This).setTimeDelayHelper (TimeDelayHelper_Package.Create (To_Unbounded_String (Java_Image (interval))));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Time Interval Action Script Condition Unknown Node")));
                end if;
            end loop;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Time Interval Action Script Condition Node Null")));
        end if;
        TimeIntervalActionScriptCondition'Class (This).init;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return TimeIntervalActionScriptCondition_Access is
      This : constant TimeIntervalActionScriptCondition_Access := new TimeIntervalActionScriptCondition;
   begin
      TimeIntervalActionScriptCondition_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TimeIntervalActionScriptCondition'Class) is
   begin
        BasicProfileActionScriptCondition_Package.Initialize (This, TimeIntervalActionScriptCondition_Package.NAME);
        Initialize_Fields (This);
        TimeIntervalActionScriptCondition'Class (This).setTimeDelayHelper (TimeDelayHelper_Package.Create (0));
        TimeIntervalActionScriptCondition'Class (This).init;
   end Initialize;

   function Create return TimeIntervalActionScriptCondition_Access is
      This : constant TimeIntervalActionScriptCondition_Access := new TimeIntervalActionScriptCondition;
   begin
      TimeIntervalActionScriptCondition_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out TimeIntervalActionScriptCondition) is
   begin
        This.timeIntervalActionScriptConditionJPanel := TimeIntervalActionScriptConditionJPanel_Package.Create (TimeIntervalActionScriptCondition_Access'(This'Unchecked_Access));
   end init;

   procedure showDialog (This : in out TimeIntervalActionScriptCondition) is
   begin
        This.timeIntervalActionScriptConditionJPanel.getTimeIntervalActionJDialog.setVisible (True);
   end showDialog;

   function toHashMap (This : in out TimeIntervalActionScriptCondition) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (TimeIntervalActionScriptConditionData_Package.TIME, Java_Box (To_Unbounded_String (Java_Image (This.timeHelper.delay_Id))));
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, TimeIntervalActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out TimeIntervalActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := BasicProfileActionScriptCondition (This).toXmlNode (document);
        node.appendChild (ModDomHelper_Package.createNodeWithValueNodes (document, TimeIntervalActionScriptConditionData_Package.NAME, TimeIntervalActionScriptCondition'Class (This).toHashMap));
        return node;
   end toXmlNode;

   procedure log (This : in out TimeIntervalActionScriptCondition) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Time Interval: ") & Java_Image (This.timeHelper.delay_Id), TimeIntervalActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
   end log;

   function getTimeDelayHelper (This : in out TimeIntervalActionScriptCondition) return TimeDelayHelper_Access is
   begin
        return This.timeHelper;
   end getTimeDelayHelper;

   procedure setTimeDelayHelper (This : in out TimeIntervalActionScriptCondition; timeHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) is
      timeHelper : constant TimeDelayHelper_Access := TimeDelayHelper_Access (timeHelper_Param);
   begin
        This.timeHelper := timeHelper;
   end setTimeDelayHelper;

   --  throws Exception
   function shouldProcess (This : in out TimeIntervalActionScriptCondition; frame : Long_Long_Integer) return Boolean is
      timeHelper : TimeDelayHelper_Access;
   begin
        timeHelper := TimeIntervalActionScriptCondition'Class (This).getTimeDelayHelper;
        if timeHelper.isTimeTNT then
            timeHelper.setStartTimeTNT;
            return BasicProfileActionScriptCondition (This).shouldProcess (frame);
        end if;
        return False;
   end shouldProcess;

   procedure toXmlNode (This : in out TimeIntervalActionScriptCondition; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TimeIntervalActionScriptCondition'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure shouldProcess (This : in out TimeIntervalActionScriptCondition; frame : Long_Long_Integer) is
      Java_Result : constant Boolean := TimeIntervalActionScriptCondition'Class (This).shouldProcess (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldProcess;

begin
   null;
   NAME := To_Unbounded_String ("Time Interval");

end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;



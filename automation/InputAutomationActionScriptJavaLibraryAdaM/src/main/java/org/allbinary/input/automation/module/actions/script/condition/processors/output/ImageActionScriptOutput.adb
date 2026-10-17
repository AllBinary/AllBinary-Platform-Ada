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


package body org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package is

   procedure Initialize_Fields (This : in out ImageActionScriptOutput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.saved := False;
      This.display := False;
      This.imageTypes := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageActionScriptOutput'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
      nodeList : NodeList_Access;
      childNode : Node_Access;
      booleanString : Unbounded_String;
      index : Integer;
   begin
        BasicProfileActionScriptOutput_Package.Initialize (This, NAME, node);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, ImageActionScriptOutput_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        actionNode := DomSearchHelper_Package.getNode (ImageActionScriptOutputData_Package.NAME, node.getChildNodes);
        if (actionNode) /= (null) then
            nodeList := actionNode.getChildNodes;
            for index in 0 .. (nodeList.getLength) - 1 loop
                childNode := nodeList.item (index);
                if (childNode.getNodeName.compareTo (ImageActionScriptOutputData_Package.SAVE)) = (0) then
                    booleanString := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.setSaved (booleanString.booleanValue);
                elsif (childNode.getNodeName.compareTo (ImageActionScriptOutputData_Package.DISPLAY)) = (0) then
                    booleanString := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.setSaved (booleanString.booleanValue);
                elsif (childNode.getNodeName.compareTo (ImageActionScriptOutputData_Package.TYPES)) = (0) then
                    This.setImageTypes (ImageTypes_Package.Create (childNode));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Output Unknown Node")));
                end if;
            end loop;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Output Node Null")));
        end if;
        This.setAllowsChildren (False);
        This.actionScriptOutputJPanel := ImageActionScriptOutputJPanel_Package.Create (ImageActionScriptOutput_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return ImageActionScriptOutput_Access is
      This : constant ImageActionScriptOutput_Access := new ImageActionScriptOutput;
   begin
      ImageActionScriptOutput_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out ImageActionScriptOutput'Class) is
   begin
        BasicProfileActionScriptOutput_Package.Initialize (This, NAME);
        Initialize_Fields (This);
        This.setImageTypes (ImageTypes_Package.Create);
        This.setAllowsChildren (False);
        This.actionScriptOutputJPanel := ImageActionScriptOutputJPanel_Package.Create (ImageActionScriptOutput_Access'(This'Unchecked_Access));
   end Initialize;

   function Create return ImageActionScriptOutput_Access is
      This : constant ImageActionScriptOutput_Access := new ImageActionScriptOutput;
   begin
      ImageActionScriptOutput_Package.Initialize (This.all);
      return This;
   end Create;

   function getActionScriptOutputJPanel (This : in out ImageActionScriptOutput) return ImageActionScriptOutputJPanel_Access is
   begin
        return This.actionScriptOutputJPanel;
   end getActionScriptOutputJPanel;

   function toHashMap (This : in out ImageActionScriptOutput) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (ImageActionScriptOutputData_Package.DISPLAY, To_Unbounded_String (Java_Image (This.isDisplay)));
        hashMap.put (ImageActionScriptOutputData_Package.SAVE, To_Unbounded_String (Java_Image (This.isSaved)));
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, ImageActionScriptOutput_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out ImageActionScriptOutput; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      newNode : Node_Access;
   begin
        node := BasicProfileActionScriptOutput (This).toXmlNode (document);
        newNode := ModDomHelper_Package.createNodeWithValueNodes (document, ImageActionScriptOutputData_Package.NAME, This.toHashMap);
        newNode.appendChild (This.getImageTypes.toXmlNode (document));
        node.appendChild (newNode);
        return node;
   end toXmlNode;

   --  throws Exception
   procedure process (This : in out ImageActionScriptOutput; frame : Long_Long_Integer) is
   begin
        ImageActionScriptOutputProcessor_Package.process (ImageActionScriptOutput_Access'(This'Unchecked_Access), frame);
   end process;

   procedure showDialog (This : in out ImageActionScriptOutput) is
   begin
        This.actionScriptOutputJPanel.getCapturedImageActionJDialog.setVisible (True);
   end showDialog;

   function isSaved (This : in out ImageActionScriptOutput) return Boolean is
   begin
        return This.saved;
   end isSaved;

   procedure setSaved (This : in out ImageActionScriptOutput; saved : Boolean) is
   begin
        This.saved := saved;
   end setSaved;

   function isDisplay (This : in out ImageActionScriptOutput) return Boolean is
   begin
        return This.display;
   end isDisplay;

   procedure setDisplay (This : in out ImageActionScriptOutput; display : Boolean) is
   begin
        This.display := display;
   end setDisplay;

   function future_toString (This : in out ImageActionScriptOutput) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (" Is Save: "));
        stringBuffer.appendboolean (This.isSaved);
        stringBuffer.append (To_Unbounded_String (" Is Display: "));
        stringBuffer.appendboolean (This.isDisplay);
        stringBuffer.append (To_Unbounded_String (" "));
        stringBuffer.append (This.getImageTypes.toString);
        return stringBuffer.toString;
   end future_toString;

   procedure log (This : in out ImageActionScriptOutput) is
   begin
        This.logUtil.putF (This.future_toString, ImageActionScriptOutput_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
   end log;

   function getImageTypes (This : in out ImageActionScriptOutput) return ImageTypes_Access is
   begin
        return This.imageTypes;
   end getImageTypes;

   procedure setImageTypes (This : in out ImageActionScriptOutput; imageTypes_Param : access ImageTypes_Package.ImageTypes'Class) is
      imageTypes : constant ImageTypes_Access := ImageTypes_Access (imageTypes_Param);
   begin
        This.imageTypes := imageTypes;
   end setImageTypes;

   procedure toXmlNode (This : in out ImageActionScriptOutput; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ImageActionScriptOutput'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   NAME := To_Unbounded_String ("Captures");

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;



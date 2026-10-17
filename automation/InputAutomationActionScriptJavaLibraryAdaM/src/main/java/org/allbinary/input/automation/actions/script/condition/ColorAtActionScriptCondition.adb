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


package body org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package is

   procedure Initialize_Fields (This : in out ColorAtActionScriptCondition'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.colorAtActionScriptConditionJPanel := null;
      
      This.colorRangeInterface := ColorRangeInterface_Access (ColorRange_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out ColorAtActionScriptCondition'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
      nodeList : NodeList_Access;
      childNode : Node_Access;
      string_Id : Unbounded_String;
      locationY : Unbounded_String;
      locationX : Unbounded_String;
      index : Integer;
   begin
        BasicProfileActionScriptCondition_Package.Initialize (This, ColorAtActionScriptCondition_Package.NAME, node);
        Initialize_Fields (This);
        This.point := Point_Package.Create (0, 0);
        actionNode := DomSearchHelper_Package.getNode (ColorAtActionScriptConditionData_Package.NAME, node.getChildNodes);
        if (actionNode) /= (null) then
            nodeList := actionNode.getChildNodes;
            for index in 0 .. (nodeList.getLength) - 1 loop
                childNode := nodeList.item (index);
                if (childNode.getNodeName.compareTo (ColorAtActionScriptConditionData_Package.LOCATION_X)) = (0) then
                    locationX := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.point.x := To_Unbounded_String (Java_Image (locationX));
                elsif (childNode.getNodeName.compareTo (ColorAtActionScriptConditionData_Package.LOCATION_Y)) = (0) then
                    locationY := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.point.y := To_Unbounded_String (Java_Image (locationY));
                elsif (childNode.getNodeName.compareTo (ColorAtActionScriptConditionData_Package.MIN_RED)) = (0) then
                    string_Id := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.getColorRangeInterface.setMinRed (To_Unbounded_String (Java_Image (string_Id)));
                elsif (childNode.getNodeName.compareTo (ColorAtActionScriptConditionData_Package.MAX_RED)) = (0) then
                    string_Id := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.getColorRangeInterface.setMaxRed (To_Unbounded_String (Java_Image (string_Id)));
                elsif (childNode.getNodeName.compareTo (ColorAtActionScriptConditionData_Package.MIN_GREEN)) = (0) then
                    string_Id := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.getColorRangeInterface.setMinGreen (To_Unbounded_String (Java_Image (string_Id)));
                elsif (childNode.getNodeName.compareTo (ColorAtActionScriptConditionData_Package.MAX_GREEN)) = (0) then
                    string_Id := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.getColorRangeInterface.setMaxGreen (To_Unbounded_String (Java_Image (string_Id)));
                elsif (childNode.getNodeName.compareTo (ColorAtActionScriptConditionData_Package.MIN_BLUE)) = (0) then
                    string_Id := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.getColorRangeInterface.setMinBlue (To_Unbounded_String (Java_Image (string_Id)));
                elsif (childNode.getNodeName.compareTo (ColorAtActionScriptConditionData_Package.MAX_BLUE)) = (0) then
                    string_Id := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.getColorRangeInterface.setMaxBlue (To_Unbounded_String (Java_Image (string_Id)));
                end if;
            end loop;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Color At Action Script Condition Node Null")));
        end if;
        This.init;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return ColorAtActionScriptCondition_Access is
      This : constant ColorAtActionScriptCondition_Access := new ColorAtActionScriptCondition;
   begin
      ColorAtActionScriptCondition_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out ColorAtActionScriptCondition'Class) is
   begin
        BasicProfileActionScriptCondition_Package.Initialize (This, ColorAtActionScriptCondition_Package.NAME);
        Initialize_Fields (This);
        This.point := Point_Package.Create (0, 0);
        This.init;
   end Initialize;

   function Create return ColorAtActionScriptCondition_Access is
      This : constant ColorAtActionScriptCondition_Access := new ColorAtActionScriptCondition;
   begin
      ColorAtActionScriptCondition_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out ColorAtActionScriptCondition) is
   begin
        This.colorAtActionScriptConditionJPanel := ColorAtActionScriptConditionJPanel_Package.Create (ColorAtActionScriptCondition_Access'(This'Unchecked_Access));
   end init;

   function getPoint (This : in out ColorAtActionScriptCondition) return Point_Access is
   begin
        return This.point;
   end getPoint;

   procedure setPoint (This : in out ColorAtActionScriptCondition; point_Param : access Point_Package.Point'Class) is
      point : constant Point_Access := Point_Access (point_Param);
   begin
        This.point := point;
   end setPoint;

   procedure showDialog (This : in out ColorAtActionScriptCondition) is
   begin
        This.colorAtActionScriptConditionJPanel.getColorAtActionJDialog.setVisible (True);
   end showDialog;

   function toHashMap (This : in out ColorAtActionScriptCondition) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (ColorAtActionScriptConditionData_Package.LOCATION_X, To_Unbounded_String (Java_Image (This.getPoint.x)));
        hashMap.put (ColorAtActionScriptConditionData_Package.LOCATION_Y, To_Unbounded_String (Java_Image (This.getPoint.y)));
        hashMap.put (ColorAtActionScriptConditionData_Package.MIN_RED, To_Unbounded_String (Java_Image (This.getColorRangeInterface.getMinRed)));
        hashMap.put (ColorAtActionScriptConditionData_Package.MAX_RED, To_Unbounded_String (Java_Image (This.getColorRangeInterface.getMaxRed)));
        hashMap.put (ColorAtActionScriptConditionData_Package.MIN_GREEN, To_Unbounded_String (Java_Image (This.getColorRangeInterface.getMinGreen)));
        hashMap.put (ColorAtActionScriptConditionData_Package.MAX_GREEN, To_Unbounded_String (Java_Image (This.getColorRangeInterface.getMaxGreen)));
        hashMap.put (ColorAtActionScriptConditionData_Package.MIN_BLUE, To_Unbounded_String (Java_Image (This.getColorRangeInterface.getMinBlue)));
        hashMap.put (ColorAtActionScriptConditionData_Package.MAX_BLUE, To_Unbounded_String (Java_Image (This.getColorRangeInterface.getMaxBlue)));
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, ColorAtActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out ColorAtActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := BasicProfileActionScriptCondition (This).toXmlNode (document);
        node.appendChild (ModDomHelper_Package.createNodeWithValueNodes (document, ColorAtActionScriptConditionData_Package.NAME, This.toHashMap));
        return node;
   end toXmlNode;

   --  throws Exception
   function shouldProcess (This : in out ColorAtActionScriptCondition; frame : Long_Long_Integer) return Boolean is
      capturedBufferedImageCacheable : BufferedImageFrameCacheable_Access;
      bufferedImage : BufferedImage_Access;
      automaticCacheInterface : AutomaticCacheInterface_Access;
      colorInteger : Integer;
      colorCacheable : ColorCacheable_Access;
      color : Color_Access;
   begin
        capturedBufferedImageCacheable := BufferedImageFrameCacheable_Access ((AutomaticCacheInterface_Access (CapturedBufferedImagesCacheSingleton_Package.getInstance)).get (To_Unbounded_String (Java_Image (frame))));
        bufferedImage := capturedBufferedImageCacheable.getBufferedImage;
        automaticCacheInterface := ColorCacheFactory_Package.getInstance;
        colorInteger := To_Unbounded_String (Java_Image (bufferedImage.getRGB (This.getPoint.x, This.getPoint.y)));
        colorCacheable := ColorCacheable_Access (automaticCacheInterface.get (colorInteger));
        color := colorCacheable.getColor;
        if This.colorRangeInterface.isInRange (color) then
            return BasicProfileActionScriptCondition (This).shouldProcess (frame);
        end if;
        return False;
   end shouldProcess;

   procedure log (This : in out ColorAtActionScriptCondition) is
      message : Unbounded_String;
   begin
        message := StringMaker_Package.Create.append (To_Unbounded_String ("getPoint(): ")).append (This.getPoint.toString).append (CommonSeps_Package.getInstance.NEW_LINE).append (This.getColorRangeInterface.toString).toString;
        This.logUtil.putF (message, ColorAtActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
   end log;

   function getColorRangeInterface (This : in out ColorAtActionScriptCondition) return ColorRangeInterface_Access is
   begin
        return This.colorRangeInterface;
   end getColorRangeInterface;

   procedure setColorRangeInterface (This : in out ColorAtActionScriptCondition; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) is
      colorRangeInterface : constant ColorRangeInterface_Access := ColorRangeInterface_Access (colorRangeInterface_Param);
   begin
        This.colorRangeInterface := colorRangeInterface;
   end setColorRangeInterface;

   procedure toXmlNode (This : in out ColorAtActionScriptCondition; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ColorAtActionScriptCondition'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure shouldProcess (This : in out ColorAtActionScriptCondition; frame : Long_Long_Integer) is
      Java_Result : constant Boolean := ColorAtActionScriptCondition'Class (This).shouldProcess (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldProcess;

begin
   null;
   NAME := To_Unbounded_String ("If Color At");

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;



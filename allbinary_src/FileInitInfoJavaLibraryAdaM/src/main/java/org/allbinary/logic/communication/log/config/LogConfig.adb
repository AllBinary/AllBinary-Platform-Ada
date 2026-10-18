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


with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypesData_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypesData_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.java.bool.BooleanUtil_Package; use org.allbinary.logic.java.bool.BooleanUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.log.config.LogConfigData_Package; use org.allbinary.logic.communication.log.config.LogConfigData_Package;

package body org.allbinary.logic.communication.log.config.LogConfig_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogConfigType_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;
   package LogConfigTypeData_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package LogConfigTypesData_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypesData_Package;
   package AbFileLocalInputStream_Package renames Standard.org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package BooleanUtil_Package renames Standard.org.allbinary.logic.java.bool.BooleanUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out LogConfig'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out LogConfig'Class; aName : Unbounded_String; aDescription : Unbounded_String; aPath : Unbounded_String; aFileName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.isEnabled_Field := False;
        This.name := aName;
        This.description := aDescription;
        This.path := aPath;
        This.fileName := aFileName;
   end Initialize;

   function Create (aName : Unbounded_String; aDescription : Unbounded_String; aPath : Unbounded_String; aFileName : Unbounded_String) return LogConfig_Access is
      This : constant LogConfig_Access := new LogConfig;
   begin
      LogConfig_Package.Initialize (This.all, aName, aDescription, aPath, aFileName);
      return This;
   end Create;

   procedure Initialize (This : in out LogConfig'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      enabledValueNode : Node_Access;
      isEnabledString : Unbounded_String;
      logConfigData : LogConfigData_Access;
      nameValueNode : Node_Access;
      descriptionValueNode : Node_Access;
      fileValueNode : Node_Access;
   begin
      Initialize_Fields (This);
        enabledValueNode := DomSearchHelper_Package.getNode (EntryData_Package.getInstance.ENABLE, node.getChildNodes);
        isEnabledString := DomNodeHelper_Package.getTextNodeValue (enabledValueNode);
        This.isEnabled_Field := BooleanUtil_Package.getInstance.getFromString (isEnabledString);
        logConfigData := LogConfigData_Package.getInstance;
        nameValueNode := DomSearchHelper_Package.getNode (logConfigData.NAME, node.getChildNodes);
        This.name := DomNodeHelper_Package.getTextNodeValue (nameValueNode);
        descriptionValueNode := DomSearchHelper_Package.getNode (logConfigData.DESCRIPTION, node.getChildNodes);
        This.description := DomNodeHelper_Package.getTextNodeValue (descriptionValueNode);
        fileValueNode := DomSearchHelper_Package.getNode (logConfigData.FILE, node.getChildNodes);
        This.fileName := DomNodeHelper_Package.getTextNodeValue (fileValueNode);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return LogConfig_Access is
      This : constant LogConfig_Access := new LogConfig;
   begin
      LogConfig_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   function getName (This : in out LogConfig) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function isEnabled (This : in out LogConfig) return Boolean is
   begin
        return This.isEnabled_Field;
   end isEnabled;

   procedure enable (This : in out LogConfig) is
   begin
        This.isEnabled_Field := True;
   end enable;

   procedure disable (This : in out LogConfig) is
   begin
        This.isEnabled_Field := False;
   end disable;

   function getDescription (This : in out LogConfig) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   function getFileName (This : in out LogConfig) return Unbounded_String is
   begin
        return This.fileName;
   end getFileName;

   procedure setName (This : in out LogConfig; value : Unbounded_String) is
   begin
        This.name := value;
   end setName;

   procedure setDescription (This : in out LogConfig; value : Unbounded_String) is
   begin
        This.description := value;
   end setDescription;

   procedure setPath (This : in out LogConfig; value : Unbounded_String) is
   begin
        This.path := value;
   end setPath;

   procedure setFileName (This : in out LogConfig; value : Unbounded_String) is
   begin
        This.fileName := value;
   end setFileName;

   --  throws Exception
   function getDoc (This : in out LogConfig) return Document_Access is
      stringBuffer : StringMaker_Access;
      file : AbFile_Access;
      document : Document_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS_Package.getWebappPath);
        stringBuffer.append (PATH_GLOBALS_Package.getInstance.INIT_PATH);
        stringBuffer.append (LogConfig'Class (This).getFileName);
        file := AbFile_Package.createAbFile (stringBuffer.toString);
        document := DomDocumentHelper_Package.create (AbFileLocalInputStream_Package.Create (file));
        return document;
   end getDoc;

   --  throws Exception
   function getTypeVector (This : in out LogConfig) return BasicArrayList_Access is
      logKeyVector : BasicArrayList_Access;
      document : Document_Access;
      logConfigTypesNodeList : NodeList_Access;
      logConfigTypesNode : Node_Access;
      logConfigTypeNodeVector : BasicArrayList_Access;
      size : Integer;
      node : Node_Access;
      logType : LogConfigType_Access;
      i : Integer;
   begin
        logKeyVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        document := LogConfig'Class (This).getDoc;
        logConfigTypesNodeList := document.getElementsByTagName (LogConfigTypesData_Package.getInstance.NAME);
        logConfigTypesNode := logConfigTypesNodeList.item (0);
        logConfigTypeNodeVector := DomSearchHelper_Package.getAllNodes (LogConfigTypeData_Package.getInstance.NAME, logConfigTypesNode.getChildNodes);
        size := logConfigTypeNodeVector.size;
        for i in 0 .. (size) - 1 loop
            node := Node_Access (logConfigTypeNodeVector.get (i));
            logType := LogConfigTypes_Package.getInstance (node);
            logKeyVector.add (Java_Object_Access (logType));
        end loop;
        return logKeyVector;
   end getTypeVector;

end org.allbinary.logic.communication.log.config.LogConfig_Package;



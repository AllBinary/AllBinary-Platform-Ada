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


package body org.allbinary.logic.communication.log.config.LogConfig_Package is

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
   function getTypeVector (This : in out LogConfig) return BasicArrayList_Access is
      logKeyVector : BasicArrayList_Access;
   begin
        logKeyVector := BasicArrayListD_Package.Create;
        return logKeyVector;
   end getTypeVector;

end org.allbinary.logic.communication.log.config.LogConfig_Package;



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


package body org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package is

   procedure Initialize_Fields (This : in out LogConfigTypes'Class) is
   begin
      null;
   end Initialize_Fields;


   --  Java static initializer: call this once
   procedure Initializer is
   begin
        LogConfigTypes_Package.init;
   end Initializer;

   procedure Initialize (This : in out LogConfigTypes'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LogConfigTypes_Access is
      This : constant LogConfigTypes_Access := new LogConfigTypes;
   begin
      LogConfigTypes_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init is
      loggingInitInfo : LoggingInitInfo_Access;
      logConfigTypeVector : BasicArrayList_Access;
   begin
        begin
            PreLogUtil_Package.put (To_Unbounded_String ("Initialize LogconfigTypes"), To_Unbounded_String ("LogConfigTypes"), To_Unbounded_String ("init()"));
            LogConfigTypeFactory_Package.getInstance;
            loggingInitInfo := LoggingInitInfo_Package.Create;
            logConfigTypeVector := loggingInitInfo.getTypeList;
            PreLogUtil_Package.put (To_Unbounded_String ("Number Of Log Configs: ") & Java_Image (loggingInitInfo.getNumberOfLogConfigs), To_Unbounded_String ("LogConfigTypes"), To_Unbounded_String ("init()"));
            PreLogUtil_Package.put (To_Unbounded_String ("Number Of Log Config Type Names: ") & Java_Image (logConfigTypeVector.size), To_Unbounded_String ("LogConfigTypes"), To_Unbounded_String ("init()"));
            LogConfigTypes_Package.LOGGING.addAllList (logConfigTypeVector);
            LogConfigTypes_Package.LOGGING.add (LogConfigTypeFactory_Package.getInstance.NETBEANS_MODULE);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putSE (To_Unbounded_String ("Unable to initialize LogConfigTypes"), To_Unbounded_String ("LogConfigTypes"), To_Unbounded_String ("init()"), e);
                end;
        end;
   end init;

   --  throws Exception
   function getInstance (node_Param : access Node_Package.Node'Class) return LogConfigType_Access is
      node : constant Node_Access := Node_Access (node_Param);
      nameValueNode : Node_Access;
      name : Unbounded_String;
      descriptionValueNode : Node_Access;
      description : Unbounded_String;
      availableLogConfigTypes : BasicArrayList_Access;
      size : Integer;
      logConfigType : LogConfigType_Access;
      index : Integer;
   begin
        nameValueNode := DomSearchHelper_Package.getNode (LogConfigTypeData_Package.getInstance.NAME, node.getChildNodes);
        name := DomNodeHelper_Package.getTextNodeValue (nameValueNode);
        descriptionValueNode := DomSearchHelper_Package.getNodeNoThrow (LogConfigTypeData_Package.getInstance.DESCRIPTION, node.getChildNodes);
        if (descriptionValueNode) /= (null) then
            description := DomNodeHelper_Package.getTextNodeValue (descriptionValueNode);
        end if;
        availableLogConfigTypes := LogConfigType_Package.availableLogConfigTypes;
        size := availableLogConfigTypes.size;
        logConfigType := null;
        for index in 0 .. (size) - 1 loop
            logConfigType := LogConfigType_Access (availableLogConfigTypes.get (index));
            if (logConfigType.getName.compareTo (name)) = (0) then
                return logConfigType;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such LogConfigType: ") & name));
   end getInstance;

   procedure getInstance (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant LogConfigType_Access := getInstance (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   JSP_ERROR_NO_FUNCTION := To_Unbounded_String ("in JSP Not In Function");
   LOGGING := BasicArrayListD_Package.Create;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;



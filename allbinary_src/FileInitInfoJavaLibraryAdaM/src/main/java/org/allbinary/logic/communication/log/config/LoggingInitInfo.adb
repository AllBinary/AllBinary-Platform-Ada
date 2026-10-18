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


with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.log.config.LogConfigsData_Package; use org.allbinary.logic.communication.log.config.LogConfigsData_Package;
with org.allbinary.logic.communication.log.config.LogConfigData_Package; use org.allbinary.logic.communication.log.config.LogConfigData_Package;
with org.allbinary.logic.communication.log.config.LogConfig_Package; use org.allbinary.logic.communication.log.config.LogConfig_Package;

package body org.allbinary.logic.communication.log.config.LoggingInitInfo_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbFileLocalInputStream_Package renames Standard.org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out LoggingInitInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LoggingInitInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LoggingInitInfo_Access is
      This : constant LoggingInitInfo_Access := new LoggingInitInfo;
   begin
      LoggingInitInfo_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getDoc return Document_Access is
      path : Unbounded_String;
      FILEABPATH : AbPath_Access;
      file : AbFile_Access;
      document : Document_Access;
   begin
        path := (URLGLOBALS_Package.getWebappPath) + (LoggingInitInfo_Package.PACKAGE_Id);
        FILEABPATH := AbPath_Package.Create (path, INITFILENAME);
        file := AbFile_Package.createAbFileFromAbPath (FILEABPATH);
        document := DomDocumentHelper_Package.create (AbFileLocalInputStream_Package.Create (file));
        return document;
   end getDoc;

   --  throws Exception
   procedure write is
   begin
        begin
            LoggingInitInfo_Package.hasRead := False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end write;

   --  throws Exception
   procedure read is
      document : Document_Access;
      logConfigsNodeList : NodeList_Access;
      logConfigsNode : Node_Access;
      logConfigNodeVector : BasicArrayList_Access;
      size : Integer;
      node : Node_Access;
      logConfigInfo : LogConfig_Access;
      i : Integer;
   begin
        begin
            document := LoggingInitInfo_Package.getDoc;
            logConfigsNodeList := document.getElementsByTagName (LogConfigsData_Package.getInstance.NAME);
            logConfigsNode := logConfigsNodeList.item (0);
            logConfigNodeVector := DomSearchHelper_Package.getAllNodes (LogConfigData_Package.getInstance.NAME, logConfigsNode.getChildNodes);
            LoggingInitInfo_Package.logConfigInfoList := BasicArrayListD_Package.Create;
            size := logConfigNodeVector.size;
            for i in 0 .. (size) - 1 loop
                node := Node_Access (logConfigNodeVector.get (i));
                logConfigInfo := LogConfig_Package.Create (node);
                LoggingInitInfo_Package.logConfigInfoList.add (Java_Object_Access (logConfigInfo));
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end read;

   procedure setHasRead (value : Boolean) is
   begin
        LoggingInitInfo_Package.hasRead := value;
   end setHasRead;

   --  throws Exception
   procedure updateIfNeeded is
   begin
        if not (LoggingInitInfo_Package.hasRead) then
            LoggingInitInfo_Package.read;
            LoggingInitInfo_Package.hasRead := True;
            if (LoggingInitInfo_Package.logConfigInfoList) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Read Failed")));
            end if;
        end if;
   end updateIfNeeded;

   function isValid (This : in out LoggingInitInfo) return Boolean is
   begin
        begin
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end isValid;

   procedure set (logConfigInfoVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      logConfigInfoVector : constant BasicArrayList_Access := BasicArrayList_Access (logConfigInfoVector_Param);
   begin
        LoggingInitInfo_Package.logConfigInfoList := logConfigInfoVector;
   end set;

   --  throws Exception
   function get return BasicArrayList_Access is
   begin
        LoggingInitInfo_Package.updateIfNeeded;
        return LoggingInitInfo_Package.logConfigInfoList;
   end get;

   --  throws Exception
   function getTypeNameList return BasicArrayList_Access is
      allLogTypeVector : BasicArrayList_Access;
      size : Integer;
      logConfigInfo : LogConfig_Access;
      logTypeVector : BasicArrayList_Access;
      index : Integer;
   begin
        LoggingInitInfo_Package.updateIfNeeded;
        allLogTypeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := LoggingInitInfo_Package.logConfigInfoList.size;
        for index in 0 .. (size) - 1 loop
            logConfigInfo := LogConfig_Access (LoggingInitInfo_Package.logConfigInfoList.objectArray (index));
            logTypeVector := logConfigInfo.getTypeVector;
            if logConfigInfo.isEnabled then
                allLogTypeVector.addAllList (logTypeVector);
            end if;
        end loop;
        return allLogTypeVector;
   end getTypeNameList;

   --  throws Exception
   function getTypeList return BasicArrayList_Access is
      allLogTypeVector : BasicArrayList_Access;
      size : Integer;
      logConfigInfo : LogConfig_Access;
      logTypeVector : BasicArrayList_Access;
      index : Integer;
   begin
        LoggingInitInfo_Package.updateIfNeeded;
        allLogTypeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := LoggingInitInfo_Package.logConfigInfoList.size;
        for index in 0 .. (size) - 1 loop
            logConfigInfo := LogConfig_Access (LoggingInitInfo_Package.logConfigInfoList.objectArray (index));
            logTypeVector := logConfigInfo.getTypeVector;
            if logConfigInfo.isEnabled then
                allLogTypeVector.addAllList (logTypeVector);
            end if;
        end loop;
        return allLogTypeVector;
   end getTypeList;

   --  throws Exception
   function getNumberOfLogConfigs (This : in out LoggingInitInfo) return Integer is
   begin
        return LoggingInitInfo_Package.logConfigInfoList.size;
   end getNumberOfLogConfigs;

   function toString (This : in out LoggingInitInfo) return Unbounded_String is
      document : Document_Access;
   begin
        begin
            document := LoggingInitInfo_Package.getDoc;
            return XmlDocumentHelper_Package.toString (document);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return To_Unbounded_String ("Error");
                end;
        end;
   end toString;

begin
   null;
   INITFILENAME := To_Unbounded_String ("logConfig.xml");
   PACKAGE_Id := PATH_GLOBALS_Package.getInstance.INIT_PATH;
   logConfigInfoList := null;
   hasRead := False;

end org.allbinary.logic.communication.log.config.LoggingInitInfo_Package;



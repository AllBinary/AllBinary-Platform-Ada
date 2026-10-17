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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.log.config.LogConfigsData_Package; use org.allbinary.logic.communication.log.config.LogConfigsData_Package;
with org.allbinary.logic.communication.log.config.LogConfigData_Package; use org.allbinary.logic.communication.log.config.LogConfigData_Package;
with org.allbinary.logic.communication.log.config.LogConfig_Package; use org.allbinary.logic.communication.log.config.LogConfig_Package;

package org.allbinary.logic.communication.log.config.LoggingInitInfo_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbFileLocalInputStream_Package renames Standard.org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type LoggingInitInfo is tagged;
   type LoggingInitInfo_Access is access all LoggingInitInfo'Class;
   type LoggingInitInfo_Access_Array is array (Natural range <>) of LoggingInitInfo_Access;
   type LoggingInitInfo_Access_Array_Access is access all LoggingInitInfo_Access_Array;

   type LoggingInitInfo is new Java_Object with null record;
   INITFILENAME : Unbounded_String;
   PACKAGE_Id : Unbounded_String;
   logConfigInfoList : BasicArrayList_Access;
   hasRead : Boolean;

   procedure Initialize (This : in out LoggingInitInfo'Class);
   function Create return LoggingInitInfo_Access;
   function getDoc return Document_Access;
   procedure write;
   procedure read;
   procedure setHasRead (value : Boolean);
   procedure updateIfNeeded;
   function isValid (This : in out LoggingInitInfo) return Boolean;
   procedure set (logConfigInfoVector_Param : access BasicArrayList'Class);
   function get return BasicArrayList_Access;
   function getTypeNameList return BasicArrayList_Access;
   function getTypeList return BasicArrayList_Access;
   function getNumberOfLogConfigs (This : in out LoggingInitInfo) return Integer;
   function toString (This : in out LoggingInitInfo) return Unbounded_String;

end org.allbinary.logic.communication.log.config.LoggingInitInfo_Package;



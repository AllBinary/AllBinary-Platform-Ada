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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package;

package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type FtpConfigurationView is tagged;
   type FtpConfigurationView_Access is access all FtpConfigurationView'Class;
   type FtpConfigurationView_Access_Array is array (Natural range <>) of FtpConfigurationView_Access;
   type FtpConfigurationView_Access_Array_Access is access all FtpConfigurationView_Access_Array;

   type FtpConfigurationView is new DomNodeInterface with record
      ftpConfigurationInterface : FtpConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out FtpConfigurationView'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return FtpConfigurationView_Access;
   procedure Initialize (This : in out FtpConfigurationView'Class; ftpConfigurationInterface_Param : access FtpConfigurationInterface'Class);
   function Create (ftpConfigurationInterface_Param : access FtpConfigurationInterface'Class) return FtpConfigurationView_Access;
   function toXmlNode (This : in out FtpConfigurationView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out FtpConfigurationView; document_Param : access Document'Class);
   function getFtpConfigurationInterface (This : in out FtpConfigurationView) return FtpConfigurationInterface_Access;
   procedure setFtpConfigurationInterface (This : in out FtpConfigurationView; ftpConfigurationInterface_Param : access FtpConfigurationInterface'Class);

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package;



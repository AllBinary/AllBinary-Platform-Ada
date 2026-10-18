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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;

package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type FtpConfigurationView is tagged;
   type FtpConfigurationView_Access is access all FtpConfigurationView'Class;
   type FtpConfigurationView_Access_Array is array (Natural range <>) of FtpConfigurationView_Access;
   type FtpConfigurationView_Access_Array_Access is access all FtpConfigurationView_Access_Array;
   type FtpConfigurationView_Access_Array_Access_Array is array (Natural range <>) of FtpConfigurationView_Access_Array_Access;
   type FtpConfigurationView_Access_Array_Access_Array_Access is access all FtpConfigurationView_Access_Array_Access_Array;

   type FtpConfigurationView is new Java_Object and DomNodeInterface with record
      ftpConfigurationInterface : FtpConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out FtpConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return FtpConfigurationView_Access;
   procedure Initialize (This : in out FtpConfigurationView'Class; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class);
   function Create (ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) return FtpConfigurationView_Access;
   function toXmlNode (This : in out FtpConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out FtpConfigurationView; document_Param : access Document_Package.Document'Class);
   function getFtpConfigurationInterface (This : in out FtpConfigurationView) return FtpConfigurationInterface_Access;
   procedure setFtpConfigurationInterface (This : in out FtpConfigurationView; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class);

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package;



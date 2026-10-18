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
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type EmailServerConfigurationView is tagged;
   type EmailServerConfigurationView_Access is access all EmailServerConfigurationView'Class;
   type EmailServerConfigurationView_Access_Array is array (Natural range <>) of EmailServerConfigurationView_Access;
   type EmailServerConfigurationView_Access_Array_Access is access all EmailServerConfigurationView_Access_Array;
   type EmailServerConfigurationView_Access_Array_Access_Array is array (Natural range <>) of EmailServerConfigurationView_Access_Array_Access;
   type EmailServerConfigurationView_Access_Array_Access_Array_Access is access all EmailServerConfigurationView_Access_Array_Access_Array;

   type EmailServerConfigurationView is new Java_Object and DomNodeInterface with record
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out EmailServerConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return EmailServerConfigurationView_Access;
   procedure Initialize (This : in out EmailServerConfigurationView'Class; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class);
   function Create (emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) return EmailServerConfigurationView_Access;
   function getEmailConfigurationInterface (This : in out EmailServerConfigurationView) return EmailServerConfigurationInterface_Access;
   function toXmlNode (This : in out EmailServerConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out EmailServerConfigurationView; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package;



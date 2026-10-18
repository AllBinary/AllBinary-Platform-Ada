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
--  with javax.mail.internet.MimeMessage_Package; use javax.mail.internet.MimeMessage_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;

package org.allbinary.logic.communication.smtp.EmailInterface_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;

   type EmailInterface is interface and DomNodeInterface and DomDocumentMappingInterface;
   type EmailInterface_Access is access all EmailInterface'Class;
   type EmailInterface_Access_Array is array (Natural range <>) of EmailInterface_Access;
   type EmailInterface_Access_Array_Access is access all EmailInterface_Access_Array;
   type EmailInterface_Access_Array_Access_Array is array (Natural range <>) of EmailInterface_Access_Array_Access;
   type EmailInterface_Access_Array_Access_Array_Access is access all EmailInterface_Access_Array_Access_Array;
   function getDebugInfo (This : in out EmailInterface) return Unbounded_String is abstract;
   function getMimeMessage (This : in out EmailInterface) return MimeMessage_Access is abstract;
   function log (This : in out EmailInterface) return Unbounded_String is abstract;

end org.allbinary.logic.communication.smtp.EmailInterface_Package;



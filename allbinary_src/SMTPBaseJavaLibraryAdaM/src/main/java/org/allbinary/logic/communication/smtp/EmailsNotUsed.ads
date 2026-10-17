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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package; use org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.smtp.EmailData_Package; use org.allbinary.logic.communication.smtp.EmailData_Package;
with org.allbinary.logic.communication.smtp.Email_Package; use org.allbinary.logic.communication.smtp.Email_Package;

package org.allbinary.logic.communication.smtp.EmailsNotUsed_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicErrorNodeUtil_Package renames Standard.org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type EmailsNotUsed is tagged;
   type EmailsNotUsed_Access is access all EmailsNotUsed'Class;
   type EmailsNotUsed_Access_Array is array (Natural range <>) of EmailsNotUsed_Access;
   type EmailsNotUsed_Access_Array_Access is access all EmailsNotUsed_Access_Array;

   type EmailsNotUsed is new DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      emailInfoVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out EmailsNotUsed'Class);
   function Create return EmailsNotUsed_Access;
   function toXmlNode (This : in out EmailsNotUsed; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out EmailsNotUsed; document : Document_Access);

end org.allbinary.logic.communication.smtp.EmailsNotUsed_Package;



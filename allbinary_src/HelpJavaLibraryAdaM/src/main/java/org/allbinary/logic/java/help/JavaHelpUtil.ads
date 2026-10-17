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
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.io.File_Package; use java.io.File_Package;
--  with java.net.URI_Package; use java.net.URI_Package;
--  with java.net.URL_Package; use java.net.URL_Package;
--  with javax.help.CSH_Package; use javax.help.CSH_Package;
--  with javax.help.HelpBroker_Package; use javax.help.HelpBroker_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.java.help.JavaHelpUtil_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type JavaHelpUtil is tagged;
   type JavaHelpUtil_Access is access all JavaHelpUtil'Class;
   type JavaHelpUtil_Access_Array is array (Natural range <>) of JavaHelpUtil_Access;
   type JavaHelpUtil_Access_Array_Access is access all JavaHelpUtil_Access_Array;

   type JavaHelpUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      point : Point_Access;
      dimension : Dimension_Access;
      contextSensitiveHelpActionEvent : ActionEvent_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : JavaHelpUtil_Access;

   procedure Initialize (This : in out JavaHelpUtil'Class);
   function Create return JavaHelpUtil_Access;
   function getInstance return JavaHelpUtil_Access;
   procedure getInstance;
   function getHelpSet (This : in out JavaHelpUtil; filePath : Unbounded_String) return HelpSet_Access;
   procedure getHelpSet (This : in out JavaHelpUtil; filePath : Unbounded_String);
   function getHelpSet (This : in out JavaHelpUtil; url : URL_Access) return HelpSet_Access;
   procedure getHelpSet (This : in out JavaHelpUtil; url : URL_Access);
   procedure show (This : in out JavaHelpUtil; helpSet : HelpSet_Access);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.java.help.JavaHelpUtil_Package;



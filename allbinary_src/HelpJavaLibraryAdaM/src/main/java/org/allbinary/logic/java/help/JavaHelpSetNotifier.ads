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
--  with java.net.URL_Package; use java.net.URL_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;

package org.allbinary.logic.java.help.JavaHelpSetNotifier_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type JavaHelpSetNotifier is tagged;
   type JavaHelpSetNotifier_Access is access all JavaHelpSetNotifier'Class;
   type JavaHelpSetNotifier_Access_Array is array (Natural range <>) of JavaHelpSetNotifier_Access;
   type JavaHelpSetNotifier_Access_Array_Access is access all JavaHelpSetNotifier_Access_Array;

   type JavaHelpSetNotifier is new Java_Object with null record;
   vector : BasicArrayList_Access;

   procedure Initialize (This : in out JavaHelpSetNotifier'Class);
   function Create return JavaHelpSetNotifier_Access;
   function get return BasicArrayList_Access;
   procedure get;
   function isNotified (helpSet : HelpSet_Access) return Boolean;
   procedure isNotified (helpSet : HelpSet_Access);

end org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;



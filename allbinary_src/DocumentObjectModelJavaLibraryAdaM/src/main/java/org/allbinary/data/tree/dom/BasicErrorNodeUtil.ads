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
with org.allbinary.business.error.ErrorData_Package; use org.allbinary.business.error.ErrorData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;

package org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package is

   package ErrorData_Package renames Standard.org.allbinary.business.error.ErrorData_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicErrorNodeUtil is tagged;
   type BasicErrorNodeUtil_Access is access all BasicErrorNodeUtil'Class;
   type BasicErrorNodeUtil_Access_Array is array (Natural range <>) of BasicErrorNodeUtil_Access;
   type BasicErrorNodeUtil_Access_Array_Access is access all BasicErrorNodeUtil_Access_Array;

   type BasicErrorNodeUtil is new Java_Object with null record;

   procedure Initialize (This : in out BasicErrorNodeUtil'Class);
   function Create return BasicErrorNodeUtil_Access;
   function get (document : Document_Access; errorText : Unbounded_String) return Node_Access;
   procedure get (document : Document_Access; errorText : Unbounded_String);

end org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package;



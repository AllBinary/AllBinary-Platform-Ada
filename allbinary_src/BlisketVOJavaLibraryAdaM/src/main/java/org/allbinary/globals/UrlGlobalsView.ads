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

package org.allbinary.globals.UrlGlobalsView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type UrlGlobalsView is tagged;
   type UrlGlobalsView_Access is access all UrlGlobalsView'Class;
   type UrlGlobalsView_Access_Array is array (Natural range <>) of UrlGlobalsView_Access;
   type UrlGlobalsView_Access_Array_Access is access all UrlGlobalsView_Access_Array;
   type UrlGlobalsView_Access_Array_Access_Array is array (Natural range <>) of UrlGlobalsView_Access_Array_Access;
   type UrlGlobalsView_Access_Array_Access_Array_Access is access all UrlGlobalsView_Access_Array_Access_Array;

   type UrlGlobalsView is new Java_Object and DomNodeInterface with null record;

   procedure Initialize (This : in out UrlGlobalsView'Class);
   function Create return UrlGlobalsView_Access;
   function toXmlNode (This : in out UrlGlobalsView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UrlGlobalsView; document_Param : access Document_Package.Document'Class);

end org.allbinary.globals.UrlGlobalsView_Package;



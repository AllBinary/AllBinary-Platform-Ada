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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.globals.UrlGlobalsView_Package is

   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type UrlGlobalsView is tagged;
   type UrlGlobalsView_Access is access all UrlGlobalsView'Class;
   type UrlGlobalsView_Access_Array is array (Natural range <>) of UrlGlobalsView_Access;
   type UrlGlobalsView_Access_Array_Access is access all UrlGlobalsView_Access_Array;

   type UrlGlobalsView is new DomNodeInterface with null record;

   procedure Initialize (This : in out UrlGlobalsView'Class);
   function Create return UrlGlobalsView_Access;
   function toXmlNode (This : in out UrlGlobalsView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out UrlGlobalsView; document : Document_Access);

end org.allbinary.globals.UrlGlobalsView_Package;



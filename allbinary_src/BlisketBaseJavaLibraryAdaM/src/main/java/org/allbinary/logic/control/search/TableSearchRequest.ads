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
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.control.search.SearchParams_Package; use org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;

package org.allbinary.logic.control.search.TableSearchRequest_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TableSearchRequest is tagged;
   type TableSearchRequest_Access is access all TableSearchRequest'Class;
   type TableSearchRequest_Access_Array is array (Natural range <>) of TableSearchRequest_Access;
   type TableSearchRequest_Access_Array_Access is access all TableSearchRequest_Access_Array;

   type TableSearchRequest is new Java_Object with record
      xslFile : Unbounded_String;
      pageName : Unbounded_String;
      contentType : Unbounded_String;
      keywords : Unbounded_String;
      searchParams : SearchParams_Access;
   end record;

   procedure Initialize (This : in out TableSearchRequest'Class; keywords : Unbounded_String; searchParams : SearchParams_Access; xslFile : Unbounded_String; contentType : Unbounded_String);
   function Create (keywords : Unbounded_String; searchParams : SearchParams_Access; xslFile : Unbounded_String; contentType : Unbounded_String) return TableSearchRequest_Access;
   procedure setKeywords (This : in out TableSearchRequest; value : Unbounded_String);
   procedure setParams (This : in out TableSearchRequest; searchParams : SearchParams_Access);
   procedure setXslFile (This : in out TableSearchRequest; value : Unbounded_String);
   procedure setFileBaseName (This : in out TableSearchRequest; value : Unbounded_String);
   procedure setContentType (This : in out TableSearchRequest; value : Unbounded_String);
   function getKeywords (This : in out TableSearchRequest) return Unbounded_String;
   function getParams (This : in out TableSearchRequest) return SearchParams_Access;
   function getXslFile (This : in out TableSearchRequest) return Unbounded_String;
   function getFileBaseName (This : in out TableSearchRequest) return Unbounded_String;
   function getContentType (This : in out TableSearchRequest) return Unbounded_String;
   function getFileBaseNameNode (This : in out TableSearchRequest; document : Document_Access) return Node_Access;
   procedure getFileBaseNameNode (This : in out TableSearchRequest; document : Document_Access);

end org.allbinary.logic.control.search.TableSearchRequest_Package;



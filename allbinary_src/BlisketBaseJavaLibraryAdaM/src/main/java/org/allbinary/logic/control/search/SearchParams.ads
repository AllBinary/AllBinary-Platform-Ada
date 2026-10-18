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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.control.search.SearchParams_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type SearchParams is tagged;
   type SearchParams_Access is access all SearchParams'Class;
   type SearchParams_Access_Array is array (Natural range <>) of SearchParams_Access;
   type SearchParams_Access_Array_Access is access all SearchParams_Access_Array;
   type SearchParams_Access_Array_Access_Array is array (Natural range <>) of SearchParams_Access_Array_Access;
   type SearchParams_Access_Array_Access_Array_Access is access all SearchParams_Access_Array_Access_Array;

   type SearchParams is new Java_Object with record
      columnsAndSearchValues : HashMap_Access;
      order : Unbounded_String;
      sortBy : Unbounded_String;
      listLength : Unbounded_String;
      startPage : Unbounded_String;
      endPage : Unbounded_String;
   end record;

   procedure Initialize (This : in out SearchParams'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return SearchParams_Access;
   procedure add (This : in out SearchParams; column : Unbounded_String; value : Unbounded_String);
   procedure setOrder (This : in out SearchParams; value : Unbounded_String);
   procedure setSortBy (This : in out SearchParams; value : Unbounded_String);
   procedure setLength (This : in out SearchParams; value : Unbounded_String);
   procedure setStartPage (This : in out SearchParams; value : Unbounded_String);
   procedure setEndPage (This : in out SearchParams; value : Unbounded_String);
   function get (This : in out SearchParams) return HashMap_Access;
   function getOrder (This : in out SearchParams) return Unbounded_String;
   function getSortBy (This : in out SearchParams) return Unbounded_String;
   function getLength (This : in out SearchParams) return Unbounded_String;
   function getLengthInt (This : in out SearchParams) return Integer;
   function getStartPage (This : in out SearchParams) return Unbounded_String;
   function getEndPage (This : in out SearchParams) return Unbounded_String;
   function getStartPageInt (This : in out SearchParams) return Integer;
   function getEndPageInt (This : in out SearchParams) return Integer;
   function getParamsNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure getParamsNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class);
   function getFieldsNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure getFieldsNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class);
   function getOrderNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure getOrderNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class);
   function getSortByNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure getSortByNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class);
   function getLengthNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure getLengthNode (This : in out SearchParams; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.control.search.SearchParams_Package;



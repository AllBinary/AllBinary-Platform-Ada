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

package org.allbinary.logic.control.search.SearchData_Package is


   type SearchData is tagged;
   type SearchData_Access is access all SearchData'Class;
   type SearchData_Access_Array is array (Natural range <>) of SearchData_Access;
   type SearchData_Access_Array_Access is access all SearchData_Access_Array;

   type SearchData is new Java_Object with null record;
   TOTAL_NUMBER_PAGES : Unbounded_String;
   TOTAL_NUMBER_ITEMS_ON_THIS_PAGE : Unbounded_String;
   TOTAL_NUMBER_ITEMS : Unbounded_String;
   DEFAULT_PAGE_LENGTH : Integer;
   GENERATESTATICPAGES : Unbounded_String;
   SEARCHBYSUMMARY : Unbounded_String;
   SEARCHBYDESCRIPTION : Unbounded_String;
   SEARCHBYCATEGORY : Unbounded_String;
   SEARCHCATEGORIES : Unbounded_String;
   FILENAME : Unbounded_String;
   COLUMNNAME : Unbounded_String;
   COLUMNVALUE : Unbounded_String;
   PARAMS : Unbounded_String;
   LENGTH : Unbounded_String;
   ORDER : Unbounded_String;
   PAGE : Unbounded_String;
   FIELDS : Unbounded_String;
   FIELD : Unbounded_String;
   SORTBY : Unbounded_String;
   TYPE_Id : Unbounded_String;
   PAGE_INFO : Unbounded_String;
   SEARCH : Unbounded_String;
   MAKEPUBLIC : Unbounded_String;

   procedure Initialize (This : in out SearchData'Class);
   function Create return SearchData_Access;

end org.allbinary.logic.control.search.SearchData_Package;



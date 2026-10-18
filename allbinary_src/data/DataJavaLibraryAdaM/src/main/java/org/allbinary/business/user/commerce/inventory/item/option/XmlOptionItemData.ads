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

package org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package is


   type XmlOptionItemData is tagged;
   type XmlOptionItemData_Access is access all XmlOptionItemData'Class;
   type XmlOptionItemData_Access_Array is array (Natural range <>) of XmlOptionItemData_Access;
   type XmlOptionItemData_Access_Array_Access is access all XmlOptionItemData_Access_Array;
   type XmlOptionItemData_Access_Array_Access_Array is array (Natural range <>) of XmlOptionItemData_Access_Array_Access;
   type XmlOptionItemData_Access_Array_Access_Array_Access is access all XmlOptionItemData_Access_Array_Access_Array;

   type XmlOptionItemData is new Java_Object with null record;
   XML_FILE_STATUS : Unbounded_String;
   OPTION_XML_FILE : Unbounded_String;

   procedure Initialize (This : in out XmlOptionItemData'Class);
   function Create return XmlOptionItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package;



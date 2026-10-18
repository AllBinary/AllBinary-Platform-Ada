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

package org.allbinary.business.context.modules.storefront.StoreFrontsData_Package is


   type StoreFrontsData is tagged;
   type StoreFrontsData_Access is access all StoreFrontsData'Class;
   type StoreFrontsData_Access_Array is array (Natural range <>) of StoreFrontsData_Access;
   type StoreFrontsData_Access_Array_Access is access all StoreFrontsData_Access_Array;
   type StoreFrontsData_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsData_Access_Array_Access;
   type StoreFrontsData_Access_Array_Access_Array_Access is access all StoreFrontsData_Access_Array_Access_Array;

   type StoreFrontsData is new Java_Object with record
      TYPE_Id : Unbounded_String;
      RETAIL : Unbounded_String;
      SUBSCRIPTION : Unbounded_String;
      AUCTION : Unbounded_String;
      NEWS : Unbounded_String;
      BLOG : Unbounded_String;
      FORUM : Unbounded_String;
   end record;
   instance : StoreFrontsData_Access;

   procedure Initialize (This : in out StoreFrontsData'Class);
   function Create return StoreFrontsData_Access;
   function getInstance return StoreFrontsData_Access;

end org.allbinary.business.context.modules.storefront.StoreFrontsData_Package;



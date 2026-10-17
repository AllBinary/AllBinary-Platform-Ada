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

package org.allbinary.business.quoterequest.QuoteRequestData_Package is


   type QuoteRequestData is tagged;
   type QuoteRequestData_Access is access all QuoteRequestData'Class;
   type QuoteRequestData_Access_Array is array (Natural range <>) of QuoteRequestData_Access;
   type QuoteRequestData_Access_Array_Access is access all QuoteRequestData_Access_Array;

   type QuoteRequestData is new Java_Object with record
      ID : Unbounded_String;
      PROJECT_INFO : Unbounded_String;
      CUSTOMER_COMMENTS : Unbounded_String;
      BUDGET : Unbounded_String;
      TIMEFRAME : Unbounded_String;
      COMMENTS : Unbounded_String;
   end record;
   instance : QuoteRequestData_Access;

   procedure Initialize (This : in out QuoteRequestData'Class);
   function Create return QuoteRequestData_Access;
   function getInstance return QuoteRequestData_Access;
   procedure getInstance;

end org.allbinary.business.quoterequest.QuoteRequestData_Package;



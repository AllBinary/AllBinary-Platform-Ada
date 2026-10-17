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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package; use org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package;

package org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type QuoteRequestEntityFactory is tagged;
   type QuoteRequestEntityFactory_Access is access all QuoteRequestEntityFactory'Class;
   type QuoteRequestEntityFactory_Access_Array is array (Natural range <>) of QuoteRequestEntityFactory_Access;
   type QuoteRequestEntityFactory_Access_Array_Access is access all QuoteRequestEntityFactory_Access_Array;

   type QuoteRequestEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : QuoteRequestEntityFactory_Access;

   procedure Initialize (This : in out QuoteRequestEntityFactory'Class);
   function Create return QuoteRequestEntityFactory_Access;
   function getInstance return QuoteRequestEntityFactory_Access;
   function getQuoteRequestEntityInstance (This : in out QuoteRequestEntityFactory) return QuoteRequestEntity_Access;

end org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;



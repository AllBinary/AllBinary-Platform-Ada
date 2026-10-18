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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.quoterequest.QuoteRequest_Package; use org.allbinary.business.user.quoterequest.QuoteRequest_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package QuoteRequest_Package renames Standard.org.allbinary.business.user.quoterequest.QuoteRequest_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type QuoteRequestEntityInterface is interface and BasicDataTableInterface;
   type QuoteRequestEntityInterface_Access is access all QuoteRequestEntityInterface'Class;
   type QuoteRequestEntityInterface_Access_Array is array (Natural range <>) of QuoteRequestEntityInterface_Access;
   type QuoteRequestEntityInterface_Access_Array_Access is access all QuoteRequestEntityInterface_Access_Array;
   function get (This : in out QuoteRequestEntityInterface; userName : Unbounded_String; id : Integer) return QuoteRequest_Access is abstract;
   function getIds (This : in out QuoteRequestEntityInterface; userName : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure deleteWhere (This : in out QuoteRequestEntityInterface; key : Unbounded_String; value : Unbounded_String) is abstract;
   procedure insert (This : in out QuoteRequestEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out QuoteRequestEntityInterface; userName : Unbounded_String; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityInterface_Package;


